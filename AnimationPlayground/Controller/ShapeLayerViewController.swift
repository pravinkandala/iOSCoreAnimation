//
//  ShapeLayerViewController.swift
//  AnimationPlayground
//
//  Created by PK on 11/21/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import UIKit

class ShapeLayerViewController: UIViewController {

    @IBOutlet weak var containLayer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(0,150))
        bezierPath.addCurveToPoint(CGPointMake(300, 150), controlPoint1: CGPointMake(75, 0), controlPoint2: CGPointMake(225, 300))
        
        var pathLayer = CAShapeLayer()
        pathLayer.path = bezierPath.CGPath
        pathLayer.fillColor = UIColor.clearColor().CGColor
        pathLayer.strokeColor = UIColor.whiteColor().CGColor
        pathLayer.lineWidth = 3.0
        //pathLayer.lineCap = kCALineCapSquare
               self.containLayer.layer .addSublayer(pathLayer)
        
        var bikeImage = UIImage(named: "batpod")!
        var bikeLayer = CALayer()
        bikeLayer.contents = bikeImage.CGImage
        bikeLayer.frame = CGRectMake(0,0,30, 20)
        bikeLayer.position = CGPointMake(0, 150);
        self.containLayer.layer.addSublayer(bikeLayer)
        
        var animation = CAKeyframeAnimation()
        animation.keyPath = "position"
        animation.duration = 4
        animation.path = bezierPath.CGPath
        animation.autoreverses = true
        bikeLayer.position = CGPointMake(300, 150)
        animation.rotationMode = kCAAnimationRotateAuto
        bikeLayer.addAnimation(animation, forKey: nil)
        

        
    }

}
