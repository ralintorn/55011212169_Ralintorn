//
//  ViewController.swift
//  TipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTaxField: UITextField!
    @IBOutlet var taxPctSlider: UISlider!
    @IBOutlet var taxPctLabel: UILabel!
    @IBOutlet var resultTextView: UITextView!
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((totalTaxField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for (tipPct, tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultTextView.text = results
    }
    
    @IBAction func taxChangePercentage(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value)/100.0
        refreshUI()
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        totalTaxField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }
    
    func refreshUI(){
        //1
        totalTaxField.text = String(format: "%0.2f", tipCalc.total)
        //2
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        //3
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        //4
        resultTextView.text = ""
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

