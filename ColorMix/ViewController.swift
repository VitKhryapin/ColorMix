//
//  ViewController.swift
//  ColorMix
//
//  Created by Vitaly Khryapin on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mixView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixView.backgroundColor = UIColor.black
        mixView.alpha = 0.5
        mixView.layer.cornerRadius = mixView.bounds.height/3
        mixView.layer.borderColor = UIColor.systemGray5.cgColor
        mixView.layer.borderWidth = 3
    }
    
    // MARK: - IBOutles
    @IBAction func sliderUpdate(_ sender: UISlider) {
      updateSliders()
    }
    @IBAction func redAction(_ sender: UISwitch) {
      updateColor()
    }
    @IBAction func greenAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func blueAction(_ sender: UISwitch) {
        updateColor()
    }
    
    //MARK: - Helpers
    func updateSliders(){
        updateColor()
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        mixView.backgroundColor = UIColor.black
        redSwitch.isOn = false
        blueSwitch.isOn = false
        greenSwitch.isOn = false
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat (redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        mixView.backgroundColor = color
    }
}

