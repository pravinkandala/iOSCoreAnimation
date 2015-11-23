//
//  CircleAroundViewController.swift
//  AnimationPlayground
//
//  Created by PK on 11/21/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import UIKit

class CircleAroundViewController: UIViewController {

    @IBOutlet weak var layerView: UIImageView!
    var layer1: CALayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.layer1 = CALayer()
        self.layer1.contents = UIImage(named: "asteroid")?.CGImage
        self.layer1.bounds = CGRectMake(0, 0, 30, 30)
        self.layerView.layer.addSublayer(self.layer1)
        
        var frame = CGRectInset(self.layerView.bounds, -20, -20)
        var path = CGPathCreateWithEllipseInRect(frame, nil)
        var animation = CAKeyframeAnimation()
        animation.keyPath = "position"
        animation.path = path
        animation.duration = 4
       // animation.additive = true
        animation.repeatCount = HUGE
        animation.calculationMode = kCAAnimationPaced
       // animation.rotationMode = kCAAnimationRotateAuto
        animation.rotationMode = kCAAnimationRotateAutoReverse
        
        self.layer1.addAnimation(animation, forKey: "circlearound")
    }
}
