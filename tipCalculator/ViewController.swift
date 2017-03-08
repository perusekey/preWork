//
//  ViewController.swift
//  tipCalculator
//
//  Created by Uma Madhavan Shriram on 3/7/17.
//  Copyright © 2017 Uma Madhavan Shriram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
   let tipPercentages = [0.18,0.2,0.25]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

