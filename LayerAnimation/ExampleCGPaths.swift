//
//  ExampleCGPaths.swift
//  LayerAnimation
//
//  Created by Diana on 29/9/15.
//  Copyright © 2015 Moral. All rights reserved.
//

import Foundation
import UIKit

class ExampleCGPaths {
    static func facebookPath() -> CGPath {
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
    
    //  C
    static func zyncroPath() -> CGPath {
        //// Color Declarations
        let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        //// surface1
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(114.06, 55.94))
        bezierPath.addCurveToPoint(CGPointMake(118.9, 70.04), controlPoint1: CGPointMake(114.05, 61.75), controlPoint2: CGPointMake(115.66, 66.45))
        bezierPath.addCurveToPoint(CGPointMake(133.78, 75.59), controlPoint1: CGPointMake(122.14, 73.64), controlPoint2: CGPointMake(127.09, 75.48))
        bezierPath.addCurveToPoint(CGPointMake(143.03, 73.72), controlPoint1: CGPointMake(137.49, 75.54), controlPoint2: CGPointMake(140.58, 74.92))
        bezierPath.addCurveToPoint(CGPointMake(148.5, 69.34), controlPoint1: CGPointMake(145.47, 72.53), controlPoint2: CGPointMake(147.3, 71.07))
        bezierPath.addCurveToPoint(CGPointMake(150.3, 64.29), controlPoint1: CGPointMake(149.7, 67.61), controlPoint2: CGPointMake(150.31, 65.93))
        bezierPath.addCurveToPoint(CGPointMake(149.07, 61.39), controlPoint1: CGPointMake(150.29, 63.17), controlPoint2: CGPointMake(149.87, 62.2))
        bezierPath.addCurveToPoint(CGPointMake(145.76, 60.12), controlPoint1: CGPointMake(148.26, 60.58), controlPoint2: CGPointMake(147.16, 60.16))
        bezierPath.addCurveToPoint(CGPointMake(141.87, 61.93), controlPoint1: CGPointMake(143.95, 60.2), controlPoint2: CGPointMake(142.66, 60.81))
        bezierPath.addCurveToPoint(CGPointMake(139.21, 65.3), controlPoint1: CGPointMake(141.09, 63.05), controlPoint2: CGPointMake(140.2, 64.18))
        bezierPath.addCurveToPoint(CGPointMake(134.08, 67.12), controlPoint1: CGPointMake(138.21, 66.43), controlPoint2: CGPointMake(136.51, 67.03))
        bezierPath.addCurveToPoint(CGPointMake(127.27, 64.07), controlPoint1: CGPointMake(131.09, 67.08), controlPoint2: CGPointMake(128.82, 66.06))
        bezierPath.addCurveToPoint(CGPointMake(124.92, 55.94), controlPoint1: CGPointMake(125.71, 62.08), controlPoint2: CGPointMake(124.93, 59.38))
        bezierPath.addCurveToPoint(CGPointMake(127.94, 45.89), controlPoint1: CGPointMake(125.04, 51.11), controlPoint2: CGPointMake(126.05, 47.77))
        bezierPath.addCurveToPoint(CGPointMake(134.15, 43.21), controlPoint1: CGPointMake(129.84, 44.03), controlPoint2: CGPointMake(131.91, 43.14))
        bezierPath.addCurveToPoint(CGPointMake(139.36, 44.87), controlPoint1: CGPointMake(136.65, 43.3), controlPoint2: CGPointMake(138.39, 43.84))
        bezierPath.addCurveToPoint(CGPointMake(141.82, 47.96), controlPoint1: CGPointMake(140.33, 45.9), controlPoint2: CGPointMake(141.15, 46.93))
        bezierPath.addCurveToPoint(CGPointMake(145.24, 49.62), controlPoint1: CGPointMake(142.49, 48.98), controlPoint2: CGPointMake(143.63, 49.54))
        bezierPath.addCurveToPoint(CGPointMake(148.81, 48.44), controlPoint1: CGPointMake(146.66, 49.62), controlPoint2: CGPointMake(147.84, 49.23))
        bezierPath.addCurveToPoint(CGPointMake(150.3, 44.93), controlPoint1: CGPointMake(149.77, 47.66), controlPoint2: CGPointMake(150.27, 46.49))
        bezierPath.addCurveToPoint(CGPointMake(145.78, 37.94), controlPoint1: CGPointMake(150.21, 42.29), controlPoint2: CGPointMake(148.7, 39.95))
        bezierPath.addCurveToPoint(CGPointMake(134.45, 34.74), controlPoint1: CGPointMake(142.86, 35.91), controlPoint2: CGPointMake(139.08, 34.84))
        bezierPath.addCurveToPoint(CGPointMake(119.26, 40.65), controlPoint1: CGPointMake(127.77, 34.84), controlPoint2: CGPointMake(122.71, 36.81))
        bezierPath.addCurveToPoint(CGPointMake(114.06, 55.94), controlPoint1: CGPointMake(115.81, 44.49), controlPoint2: CGPointMake(114.08, 49.59))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
                
        fillColor.setFill()
        bezierPath.fill()
        
        return bezierPath.CGPath
    }

}