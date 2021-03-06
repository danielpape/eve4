//
//  ViewController.swift
//  eve4
//
//  Created by Daniel Pape on 20/01/2016.
//  Copyright © 2016 Daniel Pape. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        toolbar.barTintColor = UIColor(red: 27/255, green: 27/255, blue: 27/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapWakeButton(_ sender: AnyObject) {
        self.tabBarController?.selectedIndex = 0
    }
    
    @IBAction func tapSleepButton(_ sender: AnyObject) {
        self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func tapSettingsButton(_ sender: AnyObject) {
        self.tabBarController?.selectedIndex = 2
    }

}
