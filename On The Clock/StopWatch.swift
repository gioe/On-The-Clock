//
//  StopWatch.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/28/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation

class StopWatch : NSObject {
    var count = 0
    var timer = NSTimer()
    
    func startTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func updateCounter(){
        count+=1
    }
}
