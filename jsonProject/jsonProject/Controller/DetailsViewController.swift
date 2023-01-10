//
//  ViewController.swift
//  jsonProject
//
//  Created by BKS-GGS on 10/01/23.
//

import UIKit

class DetailsViewController: UIViewController {
    var details:Hits?

    @IBOutlet weak var Description: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = (details?.url)!
        // Do any additional setup after loading the view.
        if let url = URL(string: data) {
            do {
                let contents = try String(contentsOf: url)
                print(contents)
                Description.text = contents
            } catch {
                // contents could not be loaded
            }
        } else {
            // the URL was bad!
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
