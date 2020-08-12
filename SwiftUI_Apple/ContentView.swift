//
//  ContentView.swift
//  SwiftUI_Apple
//
//  Created by TANG,QI-RONG on 2020/7/19.
//  Copyright © 2020 Steven. All rights reserved.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
     
    //MARK: - Background
        
        let view = UIView()
    //color 1

        let inTheDark = CGRect(x: 120, y: 240, width: 100, height: 100)
        let inTheDarkBackground = UIView(frame: inTheDark)
        inTheDarkBackground.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.2274509804, blue: 0.2901960784, alpha: 1)
        
        view.addSubview(inTheDarkBackground)
     
    //color 2
        
        let someColor1 = CGRect(x:120, y: 320, width: 100, height: 100)
        
        let someBackground1 = UIView(frame: someColor1)
        someBackground1.backgroundColor = #colorLiteral(red: 1, green: 0.8258428827, blue: 0.6095182536, alpha: 1)
        
        view.addSubview(someBackground1)
        
    //color 3
        
        let someColor2 = CGRect(x: 220, y: 330, width: 100, height: 100)
        
        let someBackground2 = UIView(frame: someColor2)
        someBackground2.backgroundColor = #colorLiteral(red: 1, green: 0.4934554561, blue: 0.5243053216, alpha: 1)
        
        view.addSubview(someBackground2)
        
    //color 4
        
        let someColor3 = CGRect(x: 220, y: 240, width: 100, height: 100)
        
        let someBackground3 = UIView(frame: someColor3)
        someBackground3.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        view.addSubview(someBackground3)
        
    //color 5
        
        let someColor4 = CGRect(x: 160, y: 140, width: 100, height: 100)
         let someBackground4 = UIView(frame: someColor4)
        someBackground4.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        view.addSubview(someBackground4)
        
        
    //MARK: - Path
        
        let applePath = UIBezierPath()
     
        let leafPath = UIBezierPath()
        leafPath.move(to: CGPoint(x: 251.34, y: 190))
        leafPath.addQuadCurve(to: CGPoint(x: 211.23, y: 235.98), controlPoint: CGPoint(x: 219.01, y: 199.17))
        leafPath.addQuadCurve(to: CGPoint(x: 251.34, y: 190), controlPoint: CGPoint(x: 245.44, y: 229.05))
        leafPath.close()
   
        
    //applePath
        
      applePath.move(to: CGPoint(x: 297.69, y: 268.1))
      applePath.addQuadCurve(to: CGPoint(x: 229.02,   y: 255.93), controlPoint: CGPoint(x: 279.12, y: 234.02))
      applePath.addQuadCurve(to: CGPoint(x: 215.64,   y: 255.8), controlPoint: CGPoint(x: 221.73, y: 256.99))
      applePath.addQuadCurve(to: CGPoint(x: 153.4,   y: 266.34), controlPoint: CGPoint(x: 175.15, y: 237.2))
      applePath.addQuadCurve(to: CGPoint(x: 140,   y: 309.29), controlPoint: CGPoint(x: 140, y: 281.93))
      applePath.addQuadCurve(to: CGPoint(x: 183.01,   y: 397.62), controlPoint: CGPoint(x: 140.82  , y: 369.47))
      applePath.addQuadCurve(to: CGPoint(x: 205.02,   y: 398.41), controlPoint: CGPoint(x: 190.36  , y: 402.06))
      applePath.addQuadCurve(to: CGPoint(x: 247.17,   y: 397.6), controlPoint: CGPoint(x: 223.78  , y: 386.66))
      applePath.addQuadCurve(to: CGPoint(x: 267.59,   y: 397.43), controlPoint: CGPoint(x: 260.38 , y: 401.3))
      applePath.addQuadCurve(to: CGPoint(x: 302.75,   y: 347.38), controlPoint: CGPoint(x: 285.7 , y: 389.88))
      applePath.addQuadCurve(to: CGPoint(x: 275.72,   y: 306.63), controlPoint: CGPoint(x: 275.72 , y: 337.76))
      applePath.addQuadCurve(to: CGPoint(x: 297.69, y: 268.1), controlPoint: CGPoint(x: 273.83 , y: 282.57))
        
        applePath.close()
        
        
        applePath.append(leafPath)
        let somePath = CAShapeLayer()
        somePath.path = leafPath.cgPath
        somePath.fillColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        somePath.path = applePath.cgPath
        
        view.layer.mask = somePath
        //view.layer.addSublayer(somePath)
        
        return view
    }

    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let Path = UIBezierPath(ovalIn: CGRect(x: 180, y: 180, width: 50, height: 100))

//Path
/* let path = UIBezierPath()
 path.move (to: CGPoint(x: 200, y: 153))
 
 path.addQuadCurve(to: CGPoint(x: 271, y: 58), controlPoint: CGPoint(x: 238, y: 58))
 
 path.addQuadCurve(to: CGPoint(x: 336, y: 150), controlPoint: CGPoint(x: 310, y: 58))
 
 path.addQuadCurve(to: CGPoint(x: 358, y: 335), controlPoint: CGPoint(x: 357, y: 234))
 
 path.addLine(to: CGPoint(x: 319, y: 336))

 path.addQuadCurve(to: CGPoint(x: 270, y: 84), controlPoint: CGPoint(x: 314, y: 89))
 
 path.addQuadCurve(to: CGPoint(x: 218, y: 315), controlPoint: CGPoint(x: 226, y: 100))
 
 //Layer
        
 
 view.layer.addSublayer(somePath)
 */
