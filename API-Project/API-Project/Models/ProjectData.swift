//
//  ProjectData.swift
//  API-Project
//
//  Created by GGS-BKS on 02/09/21.
//

import Foundation
import UIKit
struct ProjectData:Codable
{
    let id:Int
    let name:String
    let url:String
    let image:Image
    let summary:String
    let airdate:String
    let number: Int
    
}

struct Image:Codable {
    let medium:String
}


extension UIImageView
{
    func downloadedFrom(url:URL,contentMode mode: UIView.ContentMode = .scaleAspectFit)  {
        contentMode=mode
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode==200,
                let mimeType=response?.mimeType,mimeType.hasPrefix("image"),
                let data=data , error==nil,
                let image=UIImage(data: data)
            else{
                return
            }
            DispatchQueue.main.async() {
                self.image=image
            }
            
        }.resume()
    }
    func downloadedFrom(link:String,contentMode mode:UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else {
            return
        }
        downloadedFrom(url: url,contentMode: mode)
    }
}

