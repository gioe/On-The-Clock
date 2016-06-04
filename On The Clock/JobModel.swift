//
//  Job.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/31/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation
import UIKit

class JobModel : NSObject {
    
    let companyName : String
    var companyLogo : UIImage?
    var lastSubmissionDate : NSDate?
    var hourlyRate : String
    
    init (companyName: String, hourlyRate: String, companyLogo: UIImage?, lastSubmissionDate: NSDate?){
        self.companyName = companyName
        self.companyLogo = companyLogo
        self.hourlyRate = hourlyRate
        self.lastSubmissionDate = lastSubmissionDate
    }
    
}