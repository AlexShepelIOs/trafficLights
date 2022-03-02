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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        greenLight.layer.cornerRadius = greenLight.layer.bounds.width / 2
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed() {
    }
    
}

