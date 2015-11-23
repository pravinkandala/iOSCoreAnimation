//
//  RotationViewController.swift
//  AnimationPlayground
//
//  Created by PK on 11/21/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import UIKit


class RotationViewController: UIViewController {

    @IBOutlet weak var containView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animateWithDuration(3, animations: {
            self.containView.alpha = 0
        })

        let shipLayer = CALayer()
        shipLayer.frame = CGRectMake(0, 0, 60, 90)
        shipLayer.position = CGPointMake(150, 150)
        shipLayer.contents = UIImage(named: "Minion")?.CGImage
        
        self.containView.layer .addSublayer(shipLayer)
        
        let animation1 = CABasicAnimation()
        animation1.keyPath = "transform.rotation"
        animation1.duration = 2
        animation1.toValue = 2 * M_PI
        animation1.repeatCount = HUGE
        //shipLayer.addAnimation(animation1, forKey: nil)
        
        let animation2 = CABasicAnimation()
        animation2.keyPath = "transform.scale"
        animation2.toValue = 20
        animation2.duration = 2
        animation2.repeatCount = HUGE
        //shipLayer.add

        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [animation1,animation2]
        animationGroup.duration = 4
        animationGroup.autoreverses = true
        animationGroup.repeatCount = HUGE
        shipLayer.addAnimation(animationGroup, forKey: nil)
    }

    

}
