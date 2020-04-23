//
//  ViewController.swift
//  HealthSense
//
//  Created by Sensehack on 3/24/20.
//  Copyright © 2020 Sensehack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let healthKitManager = HealthKitManager.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = Colors.sensehackDarkGrey
        
        // Trying out UI using coding.
        let initText = UILabel()
        initText.text = "Hello Sensehack!"
        //NOTE: Just due to one method not being falsed the rest of the programmatic constraint wasn't working
        initText.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(initText)
               
        var xConstraint = NSLayoutConstraint(item: initText, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        var YConstraint = NSLayoutConstraint(item: initText, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
               
        view.addConstraints([xConstraint, YConstraint])
        
        // Do any additional setup after loading the view.
        healthKitManager.authorizeHealthKit { (success, error) in
            
            if let error = error {
                print("Error in healthkit access \(error)")
            }
            print("Was healthkit successful? \(success)")
        }
        
        
    }


}

