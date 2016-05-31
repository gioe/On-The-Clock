//
//  JobTableViewCell.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/31/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation
import UIKit

protocol JobCellProtocol {
    var name: String { get }
    var image: UIImage { get }
    var date : String { get }
    
}

class JobTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var lastJobDate: UILabel!
    @IBOutlet private weak var companyLogo: UIImage!
    
    private var delegate: JobCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(withDelegate delegate: JobCellProtocol){
        self.delegate = delegate
        
        companyNameLabel.text = delegate.name
        companyLogo.image = delegate.image
        lastJobDate.text = delegate.date

    }
    
}

