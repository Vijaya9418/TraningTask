//
//  CustomTableViewCell.swift
//  API-Project
//
//  Created by GGS-BKS on 02/09/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var airDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
