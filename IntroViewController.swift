//
//  IntroViewController.swift
//  
//
//  Created by Matt Gioe on 5/31/16.
//
//

import Foundation
import ReactiveCocoa

class IntroViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DataPassDelegate {
    
    @IBOutlet weak var jobTable: UITableView!
    private var allJobs = [JobModel]?()
    let jobManager = Jobs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNibsForCells()
        registerDelegates()
        fetchJobs()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondViewController = (segue.destinationViewController as!  AddJobViewController)
        secondViewController.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func registerNibsForCells(){
        let nib = UINib(nibName: "JobTableViewCell", bundle: nil)
        self.jobTable.registerNib(nib, forCellReuseIdentifier: "customCell")
    }
    
    func registerDelegates(){
        self.jobTable.delegate = self
        self.jobTable.dataSource = self
        

    }
    
    func fetchJobs(){
        allJobs = jobManager.fetchAllJobs()
        if allJobs!.count == 0{
            self.jobTable.hidden = true
        }
    }
    
    func passSavedJob(job : JobModel){
        allJobs?.append(job)
        jobTable.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allJobs!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {        
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell", forIndexPath: indexPath) as! JobTableViewCell
        let job = allJobs![indexPath.row]
        cell.setupCell(withJob: job)
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}
