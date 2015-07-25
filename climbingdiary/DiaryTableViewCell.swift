//
//  DiaryTableViewCell.swift
//  climbingdiary
//
//  Created by Developer on 7/26/15.
//  Copyright © 2015 Wednesday Warriors. All rights reserved.
//

import UIKit

class DiaryTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
