//
//  NewsCell.swift
//  jsonProject
//
//  Created by BKS-GGS on 10/01/23.
//

import UIKit

class NewsCell: UITableViewCell {


    @IBOutlet weak var points: UILabel!
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
