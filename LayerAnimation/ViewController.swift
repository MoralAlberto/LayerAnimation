//
//  ViewController.swift
//  LayerAnimation
//
//  Created by Alberto Moral on 27/9/15.
//  Copyright © 2015 Moral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let circleShapeLayer: CAShapeLayer = CAShapeLayer()
    let lineShapeLayer: CAShapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        circleShapeLayer.strokeColor = UIColor.blackColor().CGColor
        circleShapeLayer.fillColor = UIColor.clearColor().CGColor
        circleShapeLayer.lineWidth = 4.0
        //circleShapeLayer.lineCap = "bevel"
        circleShapeLayer.lineDashPattern = [2, 20]
        
        circleShapeLayer.path = UIBezierPath(ovalInRect: CGRect(x: self.view.frame.size.width * 0.5, y: self.view.frame.size.height * 0.5, width: 200, height: 200)).CGPath
        
        view.layer.addSublayer(circleShapeLayer)
        
        let myBezier = UIBezierPath()
        myBezier.moveToPoint(CGPoint(x: 100, y: 100))
        myBezier.addLineToPoint(CGPoint(x: 100, y: 100))
        myBezier.addLineToPoint(CGPoint(x: 100, y: 200))
        myBezier.closePath()
        
        lineShapeLayer.strokeColor = UIColor.blackColor().CGColor
        lineShapeLayer.fillColor = UIColor.clearColor().CGColor
        lineShapeLayer.lineWidth = 4.0
        //lineShapeLayer.lineDashPattern = [2, 3]
        
        lineShapeLayer.path = myBezier.CGPath
        view.layer.addSublayer(lineShapeLayer)
        
        performSelector("changeProgress", withObject: [], afterDelay: 2.0)
        performSelector("changeProgressFill", withObject: [], afterDelay: 3.0)
    }
    
    func changeProgress() {
        circleShapeLayer.strokeEnd = 0
        lineShapeLayer.strokeEnd = 0
    }
    
    func changeProgressFill() {
        circleShapeLayer.strokeEnd = 1.0
        lineShapeLayer.strokeEnd = 1.0
    }
}

