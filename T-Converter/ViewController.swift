//
//  ViewController.swift
//  T-Converter
//
//  Created by NarkoDiller on 21.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
            slider.tintColor = .black
            slider.maximumTrackTintColor = .blue
        }
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempetureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(tempetureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitabel.text = "\(fahrenheitTemperature)ºF"
    }
}

