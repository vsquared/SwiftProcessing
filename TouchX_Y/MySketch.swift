/*
  Copy/paste into MySketch.swift in Xcode SwiftProcessing project
*/

import SwiftProcessing
import UIKit

class MySketch: Sketch, SketchDelegate {
    
    var xstr:String = ""
    var ystr:String = ""
    var ptStr:String = ""
    
    func drawCircle(){
        fill(0)
        circle(touchX, touchY, 5.0)
    }
    
    func drawRectangle() {
        fill(209)
        rect(100,100,250,100)
    }
    
    func drawText(){
        textSize(12)
        textFont("Menlo-bold")
        fill(0)
        xstr = String(format:"%0.1f",touchX)
        ystr = String(format:"%0.1f",touchY)
        ptStr = xstr + "," + ystr
        text(ptStr,touchX+4,touchY)
    }

    func setup() {
        appMode()
    }
    
    func draw() {
        background(255)
        drawRectangle()
        drawText() 
        drawCircle()
    }
}