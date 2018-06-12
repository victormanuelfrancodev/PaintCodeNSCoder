//
//  MyButtonUIButton.swift
//  MyButtonExample
//
//  Created by VicktorManuel on 6/11/18.
//  Copyright © 2018 VicktorManuel. All rights reserved.
//

import UIKit
@IBDesignable
class MyButtonUIButton: UIButton {

    var rehileteMoveGrades:CGFloat = 0.0
    var time = Timer()
    
    override func draw(_ rect: CGRect) {
        UIButtonStyle.drawMyButtonStyle(frameButton: rect, titleColor: UIColor.white, rehileteMove: rehileteMoveGrades, titleText: "button")
    }
    
    func moveRehilete(){
        time = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(updateRehilete), userInfo: nil, repeats: true)
    }
    
    @objc func updateRehilete(){
        if rehileteMoveGrades >= 359{
            rehileteMoveGrades = 0
            time.invalidate()
        }else{
            rehileteMoveGrades += 1
            setNeedsDisplay()
        }
    }

}
