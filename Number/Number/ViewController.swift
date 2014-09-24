//
//  ViewController.swift
//  Number
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var L1: UILabel!
    @IBOutlet var L2: UILabel!
    @IBOutlet var L3: UILabel!
    
    var n1 = 0
    var n2 = 0
    var n3 = 0
    
    @IBAction func b1(sender: AnyObject) {
        n1 += 1
        L1.text = "\(n1)"
    }
    
    @IBAction func b2(sender: AnyObject) {
        n2 += 1
        L2.text = "\(n2)"
    }
    
    @IBAction func b3(sender: AnyObject) {
        n3 += 1
        L3.text = "\(n3)"
    }
    @IBAction func reset(sender: AnyObject) {
        var n1 = 0
        var n2 = 0
        var n3 = 0
        
        L1.text = "0"
        L2.text = "0"
        L3.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

