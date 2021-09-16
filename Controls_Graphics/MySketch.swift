/*
 Demonstrates graphics and a few controls
 Copy/paste into MySketch.swift in Xcode SwiftProcessing project
*/

import SwiftProcessing
import UIKit

class MySketch: Sketch, SketchDelegate{
 
  var stepperFld : Label!
  var sliderFld : Label!
  var txtFld : TextField!
    
  func graphics(){
    
    // **** Primitives **** //
     fill(255, 0, 0)
     circle(100, 125, 50)
     fill(0, 255, 0)
     triangle(160, 150, 210, 150, 185, 100)
     fill(0, 0, 255)
     rect(250, 120, 60, 30)
     fill(255, 185, 15)
     square(350, 110, 40)
     fill(125, 15, 255)
     ellipse(480, 130, 100, 30)
     fill(0, 0, 0)
     arc(620, 130, 100, 30, 0, 10 )
    
     // **** Text **** //
     fill(0,0,0)
     textFont("Menlo Bold")
     textSize(33.0)
     text("Swift Processing Demo",200,50)
  }
    
  func controls(){
    
    // **** Button **** //
   let btn = createButton("Show Alert")
    btn.position(60,200)
    btn.size(150,30)
    btn.cornerRadius(15.0)
    btn.textColor(0,0,0)
    btn.textFont("Menlo Bold")
    btn.backgroundColor(158, 158, 158)
    btn.borderWidth(2.0)
    btn.touchEnded {
        let alert = self.createAlert("ERROR","Something unexpected happened.")
        alert.addAction("OK")
        alert.show()
    }
    
    // **** Slider **** //
    let slider = createSlider(0, 100, 30)
    slider.position(240,200)
    slider.size(120,30)
    slider.cornerRadius(15.0)
    slider.backgroundColor(158, 158, 158)

    // **** Slider Value Field **** //
    let sliderFld = createLabel(self, 360, 185, 50, 30)
    sliderFld.backgroundColor(215, 215, 215)
    sliderFld.text(String(slider.value()))
    sliderFld.textAlignment(.center)
    slider.valueChanged {
     sliderFld.text(String(format:"%.01f",slider.value()))
    }
    
    // **** Stepper **** //
    let stepper = createStepper(0, 100, 25, 1)
    stepper.position(460,200)

    // **** Stepper Value Field **** //
    let stepperFld = createLabel(self, 550, 185, 50, 30)
    stepperFld.backgroundColor(215, 215, 215)
    stepperFld.text(String(stepper.value()))
    stepperFld.textAlignment(.center)
    stepper.valueChanged {
     stepperFld.text(String(format:"%.01f",stepper.value()))
    }
    
    // **** Switch **** //
    let switchBtn = createSwitch()
    switchBtn.position(650, 200)
    switchBtn.on()
    switchBtn.touchEnded {
     print(switchBtn.isOn())
   }
    
  // **** Label **** //
    let label = createLabel(self, 0, 250, 90, 30)
    label.text("Name:")
    label.textAlignment(.left)
 
 // **** Text Field **** //
    let txtFld = createTextField()
    txtFld.position(105, 260)
    txtFld.size(200, 30)
    txtFld.backgroundColor(209,209,209)
  }
    
    func setup() {
      appMode()
      controls()
    }
    
    func draw() {
     background(255, 255, 255)
     graphics()
    }
}


