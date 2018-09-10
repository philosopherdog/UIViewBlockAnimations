//
//  KeyframeAnimationViewController.swift
//  UIViewAnimationDemo
//
//  Created by steve on 2018-09-09.
//  Copyright © 2018 steve. All rights reserved.
//

import UIKit

class KeyframeAnimationViewController: UIViewController {
  
  @IBAction func hatchetTapped(_ sender: UIButton) {
    UIView.animateKeyframes(withDuration: 2.0, delay: 0, animations: {
      UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
        sender.transform = CGAffineTransform(rotationAngle: 0.5*CGFloat.pi)
      })
      UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
        sender.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
      })
      UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
        sender.transform = CGAffineTransform(rotationAngle: 1.5*CGFloat.pi)
      })
      UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
        sender.transform = CGAffineTransform(rotationAngle: 2*CGFloat.pi)
      })
    })
  }
  
}
