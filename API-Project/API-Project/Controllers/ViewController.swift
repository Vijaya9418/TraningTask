//
//  ViewController.swift
//  API-Project
//
//  Created by GGS-BKS on 02/09/21.
//

import UIKit

class ViewController: UIViewController {

    var itemArray=[ProjectData]()
        var project:ProjectData?
    var searchMaterial=[ProjectData]()
   var searching=false
    
    @IBOutlet weak var tableView: UITableView!
   
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        downLoadJSON()
        searchBar.delegate=self
       
        
    }
    
    func downLoadJSON() {
        let url=URL(string: "https://api.tvmaze.com/seasons/1/episodes")
        URLSession.shared.dataTask(with: url!){ (data,response,error) in
            if error==nil{
                do{
                self.itemArray=try JSONDecoder().decode([ProjectData].self, from: data!)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        print(self.itemArray)
                     
                    }
                }
                catch{
                    print("Json Error")
                }
            }
        }.resume()
    }


}

extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination=segue.destination as? DetailsViewController
        {
            destination.project=itemArray[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}

extension ViewController:UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      if searching
      {
        return searchMaterial.count
      }
      else{
        return itemArray.count
      }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableIdentifier", for: indexPath) as! CustomTableViewCell
        if((indexPath.row)%2==0){
            cell.backgroundColor = #colorLiteral(red: 0.7904985547, green: 0.8698402047, blue: 1, alpha: 1)
           // cell.backgroundView = UIImageView(image: UIImage(named: "imgpsh_fullsize_anim")!)
          
        }
        else{
            cell.backgroundColor = .white
        }
        if searching
        {
            cell.name.text=searchMaterial[indexPath.row].name.capitalized
        }
        else{
            cell.name.text=itemArray[indexPath.row].name.capitalized
            
            cell.airDateLabel.text=itemArray[indexPath.row].airdate.capitalized
            
        //finally image fetched
            //gaurd is used to check that the data which is receiving is recieving properly or not like here image is receiving properly or not
            guard let receivedImage = try?Data(contentsOf: URL(string: itemArray[indexPath.row].image.medium)!)
            
            else{
                return cell
            }
            cell.customImageView.image=UIImage(data: receivedImage)
            
        }
        //load func
        
        
        
        
        //image
      /*  guard let urlString = project?.image.medium else { return cell }
        guard let url=URL(string: urlString) else {
            return cell
        }
        cell.customImageView.downloadedFrom(url: url) */
        
        
        cell.customImageView.layer.cornerRadius=40.0
        cell.customImageView.layer.borderColor=#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        cell.customImageView.layer.borderWidth=5
        
        
        return cell
    }
 
    
   
}
extension ViewController:UISearchBarDelegate
{
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            searchMaterial=itemArray
            tableView.reloadData()
            return
        }
        searchMaterial=itemArray.filter({ (ProjectData) -> Bool in
            ProjectData.name.lowercased().contains(searchText.lowercased())
        })
        searchBar.setShowsCancelButton(true, animated: true)
        searching=true
        tableView.reloadData()
       
        
    }

}
extension UIImageView
{
    func load(urlString:String)  {
        guard let url=URL(string: urlString)
        else
        {
            return
        }
        DispatchQueue.global().async { [weak self] in
            if let data=try?Data(contentsOf: url)
            {
                if let image = UIImage(data: data)
                {
                    DispatchQueue.main.async {
                        self?.image=image
                    }
                }
            }
        }
    }
}

