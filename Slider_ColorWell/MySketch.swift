/*
  Copy/paste into MySketch.swift in Xcode SwiftProcessing project
*/

import SwiftProcessing
import UIKit

class MySketch: Sketch, SketchDelegate{
    var slider: UISlider!
    var colorWell: UIColorWell!
    
    func setup() {
        appMode()
        slider = UISlider(frame:CGRect(x:130, y:100, width:200, height:40))
        slider.minimumValue = 10
        slider.maximumValue = 300
        slider.value = 50
        slider.isContinuous = true 
        self.addSubview(slider)
        colorWell = UIColorWell(frame: CGRect(x: 60, y: 100, width: 60, height: 60))
        colorWell.selectedColor = .red
        self.addSubview(colorWell)
    }
    
    func draw() {
        background(255,255,255)
        fill(colorWell.selectedColor!)
        circle(width/2, height/2, slider.value)
    }
}
