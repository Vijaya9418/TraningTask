//
//  VCEXtension.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation
import UIKit

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let hitsArray = self.hitsArray else { return 0 }
        return hitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsTableViewCell else {
            return UITableViewCell()
        }
        if let title = self.hitsArray?[indexPath.row].title,let point = hitsArray?[indexPath.row].points?.codingKey.stringValue {
            cell.fetchData(title:title, point:point)
        }
        return cell
    }
    
    
}
