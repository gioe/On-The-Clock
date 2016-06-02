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
    var lastSubmissionDate : String?
    var hourlyRate : Float?
    
    init (companyName: String){
        self.companyName = companyName
    }
    
}