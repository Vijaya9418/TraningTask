//
//  DetailsViewController.swift
//  API-Project
//
//  Created by GGS-BKS on 02/09/21.
//

import UIKit

class DetailsViewController: UIViewController {


    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var thirdView: UIView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var summary: UILabel!
    
    var project:ProjectData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondView.layer.cornerRadius=30
        secondView.layer.shadowRadius=50
        secondView.layer.shadowOpacity=0.5
        
        imageView.layer.cornerRadius=30
        imageView.layer.borderWidth=10
        imageView.layer.borderColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        name.text="Hey! this is " + project!.name
        
        let newstring=project?.summary.replacingOccurrences(of: "<p>", with: "").replacingOccurrences(of: "</p>", with: "")
        
        
        
        summary.text=newstring
        
        //fetch image
        let urlString = (project?.image.medium)!
        guard let url=URL(string: urlString) else { return  }

        
        imageView.downloadedFrom(url: url)
       
    }
    

}
