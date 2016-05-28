//
//  File.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/28/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation

class PaymentGenerator : NSObject {
    var hourlyRateInput : Float = 0.0
    var hourlyRateInDollas : String = ""
    var timePassed : Float = 0.0
    
    func generateDollarRepresentationOfRate(rate: Float) -> String {
        let currentRate = rate
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        return formatter.stringFromNumber(currentRate)!
    }
    
    init (rate : Float){
        super.init()
        self.hourlyRateInput = rate
        self.hourlyRateInDollas = self.generateDollarRepresentationOfRate(rate)
    }

}
