//
//  RadioButton.swift
//
//  Created by vsquared.
//

import UIKit

class RadioButton: UIButton {
override func draw(_ rect: CGRect) {
    let circle = UIBezierPath(ovalIn: bounds)
    let circleColor = UIColor.red
     circleColor.set()
     circle.fill()
  if(self.state) == .selected {
   let dotRect = bounds.insetBy(dx:8, dy:8)
   let dot = UIBezierPath (ovalIn:dotRect)
   let dotColor = UIColor.black
   dotColor.set()
   dot.fill()
  }
 }
}

