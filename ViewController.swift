//
//  ViewController.swift
//  tipCalculator
//
//  Created by Uma Madhavan Shriram on 3/7/17.
//  Copyright © 2017 Uma Madhavan Shriram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var firstView: UIView!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    let tipPercentages = [0.18,0.2,0.25]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Tip")
        // defaults.set("Light", forKey: "Theme")
        defaults.set("USD $", forKey: "Currency")
        defaults.set(NSDate(), forKey: "timeDiff")
        defaults.set("Red", forKey: "backColor")
        
        defaults.synchronize()
        
        /* User Story : Make sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
         */
        BillField.becomeFirstResponder()
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.endEditing(false)
        let defaults = UserDefaults.standard
        let bg = defaults.object(forKey: "Theme") as! String
        print ("BG" , bg)
        
        

    }

    override func updateViewConstraints() { // does not work 
        let defaults = UserDefaults.standard
        let bg = defaults.object(forKey: "Theme") as! String
        if bg == "Light" { firstView.backgroundColor = UIColor.lightGray}
        else {firstView.backgroundColor = UIColor.darkGray}
        
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        //print (tipControl.selectedSegmentIndex)
    }
    
    
    @IBAction func tipValueChanged(_ sender: UISegmentedControl) {
        calculateTip(tipControl.selectedSegmentIndex )
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // let tipPercentages = [0.18,0.2,0.25]
        
        let Bill = Double(BillField.text!) ?? 0
        
        // print(tipPercentages[tipControl.selectedSegmentIndex])
        
        let tip = Bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        
        let total = Bill + tip
        // tipLabel.text = "$\(tip)"
        
        tipLabel.text = String(format : "$%.2f",tip)
        totalLabel.text = String(format : "$%.2f", total)
    }
    
    
    
}

