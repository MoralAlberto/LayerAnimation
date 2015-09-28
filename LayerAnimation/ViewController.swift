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

    override func viewDidLoad() {
        super.viewDidLoad()

//        circleShapeLayer.strokeColor = UIColor.blackColor().CGColor
//        circleShapeLayer.fillColor = UIColor.clearColor().CGColor
//        circleShapeLayer.lineWidth = 4.0
//        //circleShapeLayer.lineCap = "bevel"
//        circleShapeLayer.lineDashPattern = [2, 20]
//        
//        circleShapeLayer.path = UIBezierPath(ovalInRect: CGRect(x: self.view.frame.size.width * 0.5, y: self.view.frame.size.height * 0.5, width: 200, height: 200)).CGPath
//        
//        view.layer.addSublayer(circleShapeLayer)
//        
//        let myBezier = UIBezierPath()
//        myBezier.moveToPoint(CGPoint(x: 100, y: 100))
//        myBezier.addLineToPoint(CGPoint(x: 100, y: 100))
//        myBezier.addLineToPoint(CGPoint(x: 100, y: 200))
//        myBezier.closePath()
//        
//        lineShapeLayer.strokeColor = UIColor.blackColor().CGColor
//        lineShapeLayer.fillColor = UIColor.clearColor().CGColor
//        lineShapeLayer.lineWidth = 4.0
//        
//        lineShapeLayer.path = myBezier.CGPath
//        view.layer.addSublayer(lineShapeLayer)
        
        facebookShapeLayer.strokeColor = UIColor.blackColor().CGColor
        facebookShapeLayer.fillColor = UIColor.clearColor().CGColor
        facebookShapeLayer.lineWidth = 1.0
        facebookShapeLayer.strokeEnd = 0
        
        facebookShapeLayer.path = facebookPath()
        view.layer.addSublayer(facebookShapeLayer)
        
        performSelector("changeProgressFill", withObject: [], afterDelay: 1.0)
    }
    
//    func changeProgress() {
//        circleShapeLayer.strokeEnd = 0
//        lineShapeLayer.strokeEnd = 0
//        facebookShapeLayer.strokeEnd = 0
//    }
    
    func changeProgressFill() {
//        circleShapeLayer.strokeEnd = 1.0
//        circleShapeLayer.fillColor = UIColor.redColor().CGColor
//        //  Fill color with progress
//        lineShapeLayer.strokeEnd = 1.0
//        twitterShapeLayer.strokeEnd = 1.0
        
        let pathAnimation = CABasicAnimation(keyPath: "strokeEnd")
        pathAnimation.duration = 4.0
        pathAnimation.fromValue = 0.0
        pathAnimation.toValue = 1.0
        facebookShapeLayer.addAnimation(pathAnimation, forKey: "strokeEnd")
    }
    
    
    func facebookPath() -> CGPath {
        //// Color Declarations
        let fillColor = UIColor(red: 0.181, green: 0.272, blue: 0.529, alpha: 1.000)
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        //// F_icon.svg Group
        //// Blue_1_ Drawing
        let fPath = UIBezierPath(roundedRect: CGRectMake(3.6, 6.6, 257.7, 257.7), cornerRadius: 14.2)
        fillColor.setFill()
        fPath.fill()
        
        
        //// f Drawing
        //let fPath = UIBezierPath()
        fPath.moveToPoint(CGPointMake(181.41, 264.31))
        fPath.addLineToPoint(CGPointMake(181.41, 164.5))
        fPath.addLineToPoint(CGPointMake(214.91, 164.5))
        fPath.addLineToPoint(CGPointMake(219.92, 125.61))
        fPath.addLineToPoint(CGPointMake(181.41, 125.61))
        fPath.addLineToPoint(CGPointMake(181.41, 100.78))
        fPath.addCurveToPoint(CGPointMake(200.68, 81.84), controlPoint1: CGPointMake(181.41, 89.52), controlPoint2: CGPointMake(184.54, 81.84))
        fPath.addLineToPoint(CGPointMake(221.28, 81.83))
        fPath.addLineToPoint(CGPointMake(221.28, 47.05))
        fPath.addCurveToPoint(CGPointMake(191.27, 45.51), controlPoint1: CGPointMake(217.72, 46.57), controlPoint2: CGPointMake(205.49, 45.51))
        fPath.addCurveToPoint(CGPointMake(141.24, 96.93), controlPoint1: CGPointMake(161.57, 45.51), controlPoint2: CGPointMake(141.24, 63.64))
        fPath.addLineToPoint(CGPointMake(141.24, 125.61))
        fPath.addLineToPoint(CGPointMake(107.66, 125.61))
        fPath.addLineToPoint(CGPointMake(107.66, 164.5))
        fPath.addLineToPoint(CGPointMake(141.24, 164.5))
        fPath.addLineToPoint(CGPointMake(141.24, 264.31))
        fPath.addLineToPoint(CGPointMake(181.41, 264.31))
        fPath.closePath()
        fPath.miterLimit = 4;
        
        fillColor2.setFill()
        fPath.fill()
        
        return fPath.CGPath
    }
}

