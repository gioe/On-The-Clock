//
//  Jobs.swift
//  On The Clock
//
//  Created by Matt Gioe on 6/4/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class Jobs: NSObject {
    var jobArray : [JobModel]
    
    override init (){
        self.jobArray = []
    }

    func fetchAllJobs() -> [JobModel]? {
        let fetchRequest = NSFetchRequest(entityName: "Job")
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext
        
        do {
            let result = try managedContext.executeFetchRequest(fetchRequest)
            if (result.count > 0) {
                for job in result{
                    let job = job as! NSManagedObject
                    
                    if let companyName = job.valueForKey("companyName"), hourlyRate = job.valueForKey("hourlyRate") {
                        let jobToAdd = JobModel(companyName: companyName as! String, hourlyRate: hourlyRate as! String, companyLogo: nil, lastSubmissionDate:nil)
                        jobArray.append(jobToAdd)
                    }
                }
            }
            return jobArray
        } catch {
            let fetchError = error as NSError
            print(fetchError)
            return nil
        }
    }

}