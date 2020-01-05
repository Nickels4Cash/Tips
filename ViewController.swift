//
//  ViewController.swift
//  Tips
//
//  Created by JonathanWang on 1/4/20.
//  Copyright © 2020 JonathanWang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any)
    
    {
        
        print("Hello")
        
        view.endEditing(true)
    }
    @IBAction func calculatetip(_ sender: Any) {
        
        let Bill = Double(BillField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.2, 0.25]
        
        let tip = Bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = Bill + tip
        
        tipLabel.text = String(format: "$%f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

