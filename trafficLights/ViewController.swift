//
//  ViewController.swift
//  trafficLights
//
//  Created by Александр Шепель on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentLightColor = CurrentLightColor.red

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        redLight.alpha = 0.1
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        yellowLight.alpha = 0.1
        greenLight.layer.cornerRadius = greenLight.layer.bounds.width / 2
        greenLight.alpha = 0.1
        
        startButton.setTitle("Start", for: .normal)
        startButton.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        startButton.layer.cornerRadius = 10
        
            
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "Start" {
                    startButton.setTitle("Next", for: .normal)
                }
        if currentLightColor == .red {
            greenLight.alpha = 0.1
            redLight.alpha = 1
            currentLightColor = .yellow
        } else if currentLightColor == .yellow {
            redLight.alpha = 0.1
            yellowLight.alpha = 1
            currentLightColor = .green
        } else if currentLightColor == .green {
            yellowLight.alpha = 0.1
            greenLight.alpha = 1
            currentLightColor = .red
        }
    }
}
    enum CurrentLightColor {
        case red, yellow, green
}
