import SwiftProcessing
import UIKit

class MySketch: Sketch, SketchDelegate{
    var radioBtn : UIButton!
    
    @objc func radioBtnAction(_ sender:AnyObject){
        radioBtn?.isSelected.toggle()
        print("state = \(String(describing: radioBtn?.state))")
    }
    
    func setup() {
        appMode()
        radioBtn = RadioButton(frame: CGRect(x: 125, y: 125, width: 38, height: 38))
        radioBtn?.isSelected = true
        radioBtn?.addTarget(self,action: #selector(radioBtnAction(_:)), for: .touchUpInside)
        self.addSubview(radioBtn)
    }
    
    func draw() {
        background(255,255,255)
    }    
}
