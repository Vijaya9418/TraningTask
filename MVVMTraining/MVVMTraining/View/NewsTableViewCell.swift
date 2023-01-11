//
//  NewsTableViewCell.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var pointLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fetchData(title: String, point: String) {
        self.titleLbl.text = title
        self.pointLbl.text = point
    }

}
