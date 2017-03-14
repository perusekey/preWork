//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Uma Madhavan Shriram on 3/7/17.
//  Copyright © 2017 Uma Madhavan Shriram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var secondView: UIView!


    @IBOutlet weak var themeControl: UISegmentedControl!
    
    let secondView_tipPercentages = [0.18,0.2,0.25]
    let secondView_theme = ["Light", "Dark"]
    
    
    
    
    @IBAction func defaultTheme(_ sender: UISegmentedControl) {
        let defaults = UserDefaults.standard
        defaults.set("Theme",forKey:"Light")
        
        if themeControl.selectedSegmentIndex == 1 {
        
            defaults.set("Theme", forKey:"Light")
            secondView.backgroundColor = UIColor.lightGray
            defaults.synchronize()

            
        }
        else { defaults.set("Theme", forKey : "Dark")
                secondView.backgroundColor = UIColor.darkGray
            defaults.synchronize()

        }
        
                      }
    
    @IBAction func themeChange(_ sender: UISegmentedControl) {
        defaultTheme(themeControl)
    }
    
    //defaults.setObject
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        secondView.backgroundColor = UIColor.orange
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
