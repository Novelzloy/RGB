//
//  ViewController.swift
//  RGB
//
//  Created by Роман on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var spaceColor: UIView!
    
    @IBOutlet weak var lableForGreen: UILabel!
    @IBOutlet weak var lableForRed: UILabel!
    @IBOutlet weak var lableForBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spaceColor.layer.cornerRadius = 20
        sliderRed.value = 0
        sliderRed.maximumValue = 0
        sliderRed.maximumValue = 1
        sliderGreen.value = 0
        sliderGreen.maximumValue = 0
        sliderGreen.maximumValue = 1
        sliderBlue.value = 0
        sliderBlue.maximumValue = 0
        sliderBlue.maximumValue = 1
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
        lableForRed.text = "0.00"
        lableForGreen.text = "0.00"
        lableForBlue.text = "0.00"
        
        changeColor()
    }

    @IBAction func sliderRedAction() {
        let formatRed = String(format: "%.2f",sliderRed.value)
        lableForRed.text = formatRed
        changeColor()
    }
    
    @IBAction func sliderGreenAction() {
        let formatGreen = String(format: "%.2f",sliderGreen.value)
        lableForGreen.text = formatGreen
        changeColor()
    }
    
    @IBAction func slidreBlueAction() {
        let formatBlue = String(format: "%.2f",sliderBlue.value)
        lableForBlue.text = formatBlue
        changeColor()
    }
    
    
    func changeColor() {
        spaceColor.backgroundColor = UIColor(displayP3Red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
}

