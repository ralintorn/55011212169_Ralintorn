//
//  ColorTwoViewController.swift
//  segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    //    func myVCDidFinish(controller:ColorTwoViewController,text:String)
    func myVCDidFinish(controller:ColorTwoViewController,text:String,procol:UIColor,name:String,id:String)
}
class ColorTwoViewController: UIViewController {
    
    @IBOutlet var Nametfield: UITextField!
    @IBOutlet var IDtfield: UITextField!
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    var ColorString = ""
    @IBOutlet var ColorLabel: UILabel!
    @IBOutlet var ColorRandom: UIButton!
    var col: UIColor!
    
    @IBAction func ColorSelectionButton(sender: UIButton) {
        ColorLabel.text = sender.titleLabel!.text!
        ColorLabel.backgroundColor = sender.backgroundColor
        col = getRandomColor()
        ColorLabel.textColor = col
        ColorLabel.backgroundColor = col
        ColorLabel.font = UIFont.boldSystemFontOfSize(50)
        
    }
    
    @IBAction func SaveColor(sender: UIBarButtonItem) {
        if(delegate != nil){
            delegate!.myVCDidFinish(self, text:ColorLabel!.text!,procol:col,name: Nametfield!.text!,id: IDtfield!.text!)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ColorLabel.text = ColorString
    }
    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}