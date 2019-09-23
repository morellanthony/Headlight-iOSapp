//
//  ViewController.swift
//  Morell_project00
//
//  Created by macUser on 9/11/19.
//  Copyright © 2019 macUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var brightnessLabel: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderAdjuster(_ sender: UISlider)
    {
        brightnessLabel.text = String(format: "%.2f", sender.value)
        
        UIScreen.main.brightness = CGFloat(sender.value)
    }
    
    
    @IBAction func darkMode(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            self.view.backgroundColor = UIColor.lightGray
        }
        else{
            self.view.backgroundColor = UIColor.white
        }
    }
    
}
