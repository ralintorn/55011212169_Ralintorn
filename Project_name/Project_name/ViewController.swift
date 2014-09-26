//
//  ViewController.swift
//  Project_name
//
//  Created by student on 9/26/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ListName: UITableView!
    @IBOutlet weak var inputName: UITextField!
    
    var Liststudent = [student]()
    
    @IBAction func okbutton(sender: AnyObject) {}
    @IBAction func clearbutton(sender: AnyObject) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

