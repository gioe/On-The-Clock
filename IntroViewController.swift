//
//  IntroViewController.swift
//  
//
//  Created by Matt Gioe on 5/31/16.
//
//

import Foundation
import ReactiveCocoa

class IntroViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var jobTable: UITableView!
    private var allJobs = [JobModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNibsForCells()
        registerDelegates()
    
        if allJobs.count == 0{
            self.jobTable.hidden = true
        }
    }
    
    func registerNibsForCells(){
        let nib = UINib(nibName: "JobTableViewCell", bundle: nil)
        
        self.jobTable.registerNib(nib, forCellReuseIdentifier: "customCell")
    }
    
    func registerDelegates(){
        self.jobTable.delegate = self
        self.jobTable.dataSource = self

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allJobs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {        
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell", forIndexPath: indexPath) as! JobTableViewCell
        let job = allJobs[indexPath.row]
        cell.setupCell(withJob: job)
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}
