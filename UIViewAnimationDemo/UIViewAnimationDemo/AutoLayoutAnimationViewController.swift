//
//  AutoLayoutAnimationViewController.swift
//  UIViewAnimationDemo
//
//  Created by steve on 2018-09-10.
//  Copyright © 2018 steve. All rights reserved.
//

import UIKit

class AutoLayoutAnimationViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var yellowView: UIView!
  
  //1:TODO - Connect
  @IBOutlet weak var height: NSLayoutConstraint!
  
  enum Expanded: CGFloat {
    case yes = 200.0
    case no = 75.0
    
    // label's text depends on expanded state
    func ouput()-> String {
      switch self {
      case .yes:
        return "Very Long String"
      default:
        return "Short"
      }
    }
  }
  
  var isExpanded = Expanded.no

  override func viewDidLoad() {
    super.viewDidLoad()
    addGesture()
    updateView()
  }
  
  private func addGesture() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
    yellowView.addGestureRecognizer(tapGesture)
  }
  
  // gesture's action
  @objc func viewTapped() {
    // toggles isExpanded state
    isExpanded = isExpanded == .no ? .yes : .no
    updateView()
  }
  
  private func updateView() {
    //2:TODO - implement animation for adjusting height constant
    //3:TODO - adjust label's text depending on isExpanded state
  }
}
