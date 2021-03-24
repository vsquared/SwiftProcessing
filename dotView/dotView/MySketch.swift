import SwiftProcessing
import UIKit

class MySketch: Sketch, SketchDelegate{
    
    var well : UIColorWell?
    var slider : Slider?
    let _sliderW : CGFloat = 150
    let _sliderMax : Float = 400
    
    func setup() {
        appMode()
        
        // **** Slider **** //
        slider = createSlider(0, _sliderMax, 150.0)
        slider?.position(width/2-_sliderW/2, 100)
        slider?.size(_sliderW,30)
        slider?.cornerRadius(15.0)
        slider?.backgroundColor(158, 158, 158)
        slider?.thumbColor(0, 255, 0)
        slider?.minColor(0, 0, 255)
        slider?.maxColor(0, 0, 255)
        
        // **** Color Well **** //
        well = UIColorWell(frame: CGRect( x:(UIScreen.main.bounds.size.width) - 80, y:100, width:60, height:30))
        well?.selectedColor = UIColor.red
        self.addSubview ((well)!)
    }
    
    func draw() {
        background(255,255,255)
        // Convert UIColor to Color
        fill(well!.selectedColor!.cgColor.components![0]*255, well!.selectedColor!.cgColor.components![1]*255, well!.selectedColor!.cgColor.components![2]*255)
        circle(width/2, height/2, CGFloat((self.slider?.value())!))
    }
    
}
