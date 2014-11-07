//
//  ViewController.swift
//  project
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollisionBehaviorDelegate {
    
    var square: UIView!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var snap: UISnapBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        square = UIView(frame: CGRect(x: 95, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.redColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        let barrier = UIView(frame: CGRect(x: 0, y:300,width: 130, height:20))
        
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        barrier.backgroundColor = UIColor.blueColor()
        view.addSubview(barrier)
        
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect:barrier.frame))
        
        collision.action = { println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
            
            self.collision.collisionDelegate = self
            
            let itemBehaviour = UIDynamicItemBehavior(items: [self.square])
            itemBehaviour.elasticity = 0.6
            self.animator.addBehavior(itemBehaviour)
        }
    }
    
        func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
            println("Boundary contact occurred - \(identifier)")
        
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.greenColor()
        UIView.animateWithDuration(0) {
        collidingView.backgroundColor = UIColor.purpleColor()
        }
//            var firstContact = false
//            
//            if (!firstContact) {
//                firstContact = true
//                
//                let square = UIView(frame: CGRect(x: 30, y: 0, width: 30, height: 20))
//                square.backgroundColor = UIColor.grayColor()
//                view.addSubview(square)
//                
//                collision.addItem(square)
//                gravity.addItem(square)
//                
//                let attach = UIAttachmentBehavior(item: collidingView, attachedToItem:square)
//                animator.addBehavior(attach)
//            }
        }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if (snap != nil) {
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

