//
//  ViewController.swift
//  Quiz
//
//  Created by student on 11/14/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        // set red square frame up
        // we want the blue square to have the same position as redSquare
        // so lets just reuse blueSquare.frame
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        // set background colors
        self.redSquare.backgroundColor = getRandomColor()
        self.blueSquare.backgroundColor = getRandomColor()
        
        // for now just add the redSquare
        // we'll add blueSquare as part of the transition animation
        self.container.addSubview(self.redSquare)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        // create a 'tuple' (a pair or more of objects assigned to a single variable)
        let views = (frontView: self.redSquare, backView: self.blueSquare)
        
        // set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
            // remove the front object...
            views.frontView.removeFromSuperview()
            
            // ... and add the other object
            self.container.addSubview(views.backView)
            }, completion: { finished in
                // any code entered here will be applied
                // .once the animation has completed
        })
    }
    
    @IBAction func aanimateButtonTapped(sender: AnyObject) {
        
        // create a 'tuple' (a pair or more of objects assigned to a single variable)
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        // set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
        
        // with no animation block, and a completion block set to 'nil' this makes a single line of code
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
    }
    @IBAction func aaanimateButtonTapped(sender: AnyObject) {
        
        // create a 'tuple' (a pair or more of objects assigned to a single variable)
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        // set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        // with no animation block, and a completion block set to 'nil' this makes a single line of code
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
    }
    
        func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }


}

