//
//  ViewController.swift
//  segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {
    
    @IBOutlet var ColorLabel: UILabel!
    
    @IBOutlet var IDlbel: UILabel!
    @IBOutlet var Namelbel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Namelbel.text = ""
        IDlbel.text = ""
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String,procol:UIColor,name: String,id: String){
        ColorLabel.text = ""
        ColorLabel.backgroundColor = procol
        Namelbel.text = "Name : " + name
        IDlbel.text = "ID : " + id
        
        controller.navigationController?.popToRootViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mysegue"{
            let vc = segue.destinationViewController as ColorTwoViewController
            vc.ColorString = ColorLabel.text!
            vc.delegate = self
        }
    }
}
