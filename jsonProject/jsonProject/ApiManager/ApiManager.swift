//
//  ApiManager.swift
//  jsonProject
//
//  Created by BKS-GGS on 10/01/23.
//

import Foundation


class ApiManager{
    /// GET API RESPONSE FOR FETCHING THE DATA FROM SERVER
    func getNewsFrom(url:String, closure: @escaping (hitsModel) ->()){
        guard let serverURL = URL(string: url) else{
            print("Search url is not correct")
            return
        }
        URLSession.shared.dataTask(with: URLRequest(url: serverURL)){data,response,error in
            if error != nil{
                print("unable")
                return
            }
           
            do{
          let hackerNewsList = try JSONDecoder().decode(hitsModel.self, from: data!)
                print(hackerNewsList)
                closure(hackerNewsList)
                //delegate?.send(news: hackerNewsList)
            }catch{
                print(error)
            }
        }.resume()
    }
}
