//
//  SpringAnimationViewController.swift
//  UIViewAnimationDemo
//
//  Created by steve on 2018-09-09.
//  Copyright © 2018 steve. All rights reserved.
//

import UIKit

class SpringAnimationViewController: UIViewController {
  
  var startCenter: CGPoint!
  
  @IBOutlet var sliderLabels: [UILabel]!
  private let labelPrefixes = ["Delay", "Damping", "Velocity"]
  
  @IBOutlet weak var pinkView: UIView! {
    didSet {
      startCenter = pinkView.center
    }
  }
  @IBOutlet weak var slider1: UISlider!
  
  @IBOutlet weak var slider2: UISlider!
  
  @IBOutlet weak var slider3: UISlider!
  
  @IBOutlet weak var finishLine: UIView!
  
  @IBAction func animateTapped(sender: UIBarButtonItem) {
    let delay = slider1.value // max 1.0
    let damping = slider2.value // max 1.0
    let velocity = slider3.value // max 100
    
    //TODO: - Animate PinkView to finishLine using a Spring Animation
    
    UIView.animate(withDuration: 2.0, delay: Double(delay), usingSpringWithDamping: CGFloat(damping), initialSpringVelocity: CGFloat(velocity), animations: {
      self.pinkView.center.y = self.finishLine.center.y - (self.pinkView.bounds.height/2 + self.finishLine.bounds.height/2)
      
    }) { (_) in
      UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
        self.pinkView.center = self.startCenter
      })
    }
    
    //TODO: - Animate PinkView back to original position
    
    
  }
  
  // slider action for all sliders, sets current slider's label with value
  
  @IBAction func sliderMoved(_ sender: UISlider) {
    let tag = sender.tag
    let formattedValue = String(format: "%.1f", sender.value)
    // set the slider label with value
    sliderLabels[tag].text = "\(labelPrefixes[tag]): \(formattedValue)"
  }
  
  
  
  
}
