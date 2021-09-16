//
//  ViewController.swift
//  TConverter
//
//  Created by Nelson Amerei on 9/15/21.
//  Copyright © 2021 Nikita Evdokimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureC = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureC)ºC"
        
        let temperatureF = Int(round((sender.value * 9 / 5) + 32))
        farenheitLabel.text = "\(temperatureF)ºF"
    }
    

}

/*
 about Size Classes:
 https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/
 Compact/Regular width, height
 */
