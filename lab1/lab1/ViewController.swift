//
//  ViewController.swift
//  lab1
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let coloredSquare = UIView()
//    let duration = 1.0
//    let delay = 0.0
//    let damping = 0.5 // set damping ration
//    let velocity = 1.0 // set initial velocity
//    //let options = UIViewAnimationOptions.Repeat
//    //let options = UIViewAnimationOptions.Autoreverse
//    let options = UIViewAnimationOptions.CurveLinear
//    //let size : CGFloat = 50
//    //let yPosition : CGFloat = 120
//    let size : CGFloat = CGFloat( Int(rand()) %  40 + 20.0)
//    let yPosition : CGFloat = CGFloat( Int(rand()) %  200 + 20.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        self.view.addSubview(coloredSquare)
        
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRectMake(0, yPosition, size, size)
//        self.view.addSubview(coloredSquare)
        
//        UIView.animateWithDuration(1.0, delay: 0.0, options: options, animations: {
//            
//            // any changes entered in this block will be animated
//            self.coloredSquare.backgroundColor = UIColor.redColor()
//            self.coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//            
//            }, completion: nil) 
        
//        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
//            
//            self.coloredSquare.backgroundColor = UIColor.redColor()
//            
//            // again use the square constants size and yPosition
//            self.coloredSquare.frame = CGRectMake(320-self.size, self.yPosition, self.size, self.size)
//            
//            }, completion: { animationFinished in
//                
//                self.coloredSquare.removeFromSuperview()
//                
//        })
    }

    @IBAction func animateButtonPressed(sender: AnyObject) {
//        let coloredSquare = UIView()
//        
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        
//     
//        coloredSquare.frame = CGRect(x:0, y:120, width:50, height:50)
//      
//        self.view.addSubview(coloredSquare)
//      
//        UIView.animateWithDuration(1.0, animations: {
//            
//            // animate color change and position
//            coloredSquare.backgroundColor = UIColor.redColor()
//            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//            
//            }, completion: { animationFinished in
//                
//                // when complete, remove the square from the parent view
//                coloredSquare.removeFromSuperview()
//                
//        })   
        for loopNumber in 0...10 {
            
            // set up some constants for the animation
            let duration : NSTimeInterval = 1.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( Int(rand()) %  40 + 20.0)
            let yPosition : CGFloat = CGFloat( Int(rand()) %  200 + 20.0)
            
            // create the fish and add it to the screen
            let fish = UIImageView()
            fish.image = UIImage(named: "blue-fish.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
                    
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

