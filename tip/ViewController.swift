//
//  ViewController.swift
//  tip
//
//  Created by Keneisha Wiggan on 7/14/20.
//  Copyright © 2020 codePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //  Get initial bill amount and calculate tips
        
    }

    @IBAction func onTap(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.2]
        
        //calculate tip and total
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    }
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
}

