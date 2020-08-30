//
//  ViewController.swift
//  tip
//
//  Created by Keneisha Wiggan on 7/14/20.
//  Copyright © 2020 codePath. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //  Get initial bill amount and calculate tips
        
        //Listen for events
     
        func keyboardDidShow() {
          print("keyboardDidShow")
       }
    
        //NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification,object: nil)
        
        //NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification,object: nil)
        
      // NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification,object: nil)
    }
//stop listening for keyboard hide/ show events
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
         
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification,object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification,object: nil)
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
    
    func hideKeyboard (){
        billAmountTextField.resignFirstResponder()
    }
    
    @objc func keyboardWillChange(notification: Notification){
        print("Keyboard will show: \(notification.name.rawValue)")
        
        view.frame.origin.y = -100
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return Pressed")
        hideKeyboard()
        return true
    }
}

