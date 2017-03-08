//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Uma Madhavan Shriram on 3/7/17.
//  Copyright © 2017 Uma Madhavan Shriram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func defaultTheme(_ sender: UISegmentedControl) {
    
        let defaults = UserDefaults.standard
        defaults.set("Theme",forKey:"Light")
        
    }
    
    
    //defaults.setObject
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
}
