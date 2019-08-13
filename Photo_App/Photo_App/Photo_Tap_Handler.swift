//
//  Photo_Tap_Handler.swift
//  Photo_App
//
//  Created by nhp on 8/11/19.
//  Copyright © 2019 nhp. All rights reserved.
//

import UIKit

class Photo_Tap_Handler: UIImageView {
    
    var lastTouchTime:NSDate? = nil

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //print("Touch begin")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        //print("Touch move")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        let currentTime = NSDate()
        if let previousTime = lastTouchTime {
            if currentTime.timeIntervalSince(previousTime as Date) < 0.5{
                print("Double Tap")
                lastTouchTime = nil
            }
            else{
                lastTouchTime = currentTime
            }
        }
        else{
            lastTouchTime = currentTime
        }
    }

}
