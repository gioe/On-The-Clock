//
//  File.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/28/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation

class PaymentGenerator : NSObject {
    var hourlyRate : Float
    var timePassed : Float
    

    init (rate : Float){
        self.hourlyRate = rate
        self.timePassed = 0.0
    }
    
}