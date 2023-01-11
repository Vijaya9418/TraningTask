//
//  ViewController.swift
//  jsonProject
//
//  Created by BKS-GGS on 10/01/23.
//

import UIKit

class NewsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var hitsArray : [Hits] = []
    var details:hitsModel?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        ApiManager().getNewsFrom(url: SERVER.getNews.rawValue) { responseFromServer in
            self.hitsArray = responseFromServer.hits ?? []
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            print(responseFromServer)
        }
        
      
    }
   

}

extension NewsVC:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination=segue.destination as? DetailsViewController
        {
         
            destination.details = hitsArray[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}
extension NewsVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsCell
    
        cell?.title.text = hitsArray[indexPath.row].title
        
        cell?.points.text = hitsArray[indexPath.row].points!.codingKey.stringValue
        return cell!
    }
    
    
}


