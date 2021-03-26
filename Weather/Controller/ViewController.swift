//
//  ViewController.swift
//  Weather
//
//  Created by Claudia Maciel on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var dayHour1: UILabel!
    @IBOutlet weak var dayHour2: UILabel!
    @IBOutlet weak var dayHour3: UILabel!
    @IBOutlet weak var dayHour4: UILabel!
    @IBOutlet weak var dayHour5: UILabel!
    
    @IBOutlet weak var dayHour1Image: UIImageView!
    @IBOutlet weak var dayHour2Image: UIImageView!
    @IBOutlet weak var dayHour3Image: UIImageView!
    @IBOutlet weak var dayHour4Image: UIImageView!
    @IBOutlet weak var dayHour5Image: UIImageView!
    
    @IBOutlet weak var dayHour1TempLabel: UILabel!
    @IBOutlet weak var dayHour2TempLabel: UILabel!
    @IBOutlet weak var dayHour3TempLabel: UILabel!
    @IBOutlet weak var dayHour4TempLabel: UILabel!
    @IBOutlet weak var dayHour5TempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // MARK: - IBActions
    @IBAction func hourlyWeeklySegmentedControl(_ sender: UISegmentedControl) {
    }
    
}

