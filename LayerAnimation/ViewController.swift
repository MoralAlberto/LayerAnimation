//
//  ViewController.swift
//  LayerAnimation
//
//  Created by Alberto Moral on 27/9/15.
//  Copyright © 2015 Moral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let circleShapeLayer: CAShapeLayer = CAShapeLayer()
//    let lineShapeLayer: CAShapeLayer = CAShapeLayer()
    let facebookShapeLayer: CAShapeLayer = CAShapeLayer()
    let zyncroShapeLayer: CAShapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        facebookShapeLayer.strokeColor = UIColor.blackColor().CGColor
        facebookShapeLayer.fillColor = UIColor.clearColor().CGColor
        facebookShapeLayer.lineWidth = 2.0
        facebookShapeLayer.strokeEnd = 0
        
        facebookShapeLayer.path = ExampleCGPaths.facebookPath()
        view.layer.addSublayer(facebookShapeLayer)
        
//        zyncroShapeLayer.strokeColor = UIColor.blackColor().CGColor
//        zyncroShapeLayer.fillColor = UIColor.clearColor().CGColor
//        zyncroShapeLayer.lineWidth = 1.0
//        zyncroShapeLayer.strokeEnd = 0
//        
//        zyncroShapeLayer.path = ExampleCGPaths.zyncroPath()
//        view.layer.addSublayer(zyncroShapeLayer)
        
        performSelector("changeProgressFill", withObject: [], afterDelay: 1.0)
    }
    
    func changeProgressFill() {
        let pathAnimation = CABasicAnimation(keyPath: "strokeEnd")
        pathAnimation.fromValue = 0.0
        pathAnimation.toValue = 1.0
        
        let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimation.fromValue = -0.5
        strokeStartAnimation.toValue = 1.0
        
        let strokeAnimationGroup = CAAnimationGroup()
        strokeAnimationGroup.duration = 1.5
        strokeAnimationGroup.repeatDuration = 5.0
        
        strokeAnimationGroup.animations = [pathAnimation, strokeStartAnimation]
        

        facebookShapeLayer.addAnimation(strokeAnimationGroup, forKey: nil)
        
//        let zyncroPathAnimation = CABasicAnimation(keyPath: "strokeEnd")
//        zyncroPathAnimation.duration = 4.0
//        zyncroPathAnimation.fromValue = 0.0
//        zyncroPathAnimation.toValue = 1.0
//        zyncroShapeLayer.addAnimation(pathAnimation, forKey: "strokeEnd")
    }
    
}

