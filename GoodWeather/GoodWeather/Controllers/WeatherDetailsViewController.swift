//
//  WeatherDetailsViewController.swift
//  GoodWeather
//
//  Created by Mohammad Azam on 12/9/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class WeatherDetailsViewController: UIViewController {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    
    var weatherViewModel: WeatherViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let weatherVM = self.weatherViewModel {
            self.cityNameLabel.text = weatherVM.name.value
            self.currentTemperatureLabel.text = weatherVM.currentTemperature.temperature.value.formatAsDegree
        }
        
      
    }
    
}
