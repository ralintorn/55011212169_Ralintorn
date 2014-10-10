//
//  ViewController.swift
//  Exam1_55011212169
//
//  Created by student on 10/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textName: UITextField!
    @IBOutlet var textVolume: UITextField!
    @IBOutlet var textPrice: UITextField!
    @IBOutlet var textTotal: UITextField!
    @IBOutlet var textlabel: UILabel!
    let cellidentifired = "Identifired"
    var calc = Exammodel(num: 400, price: 2.32)
    
    @IBAction func butTotal(sender: AnyObject) {
        calc.num = Double((textTotal.text as NSString).doubleValue)
        refreshUI()
    }
    @IBAction func butprofit(sender: AnyObject) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func refreshUI(){
        //textPrice.text = String(format: "%0.2f",textPrice )
        textTotal.text = "\(calc.total)Baht"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

