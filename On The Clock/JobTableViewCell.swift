//
//  JobTableViewCell.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/31/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import UIKit

class JobTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var lastJobDate: UILabel!
    @IBOutlet weak var logo: UIImageView!
    
    internal func setupCell(withJob job:JobModel){
        companyNameLabel.text = job.companyName
        logo.image = job.companyLogo
//        lastJobDate.text = job.lastSubmissionDate
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
