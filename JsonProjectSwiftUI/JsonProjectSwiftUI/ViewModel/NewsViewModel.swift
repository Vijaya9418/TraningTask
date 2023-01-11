//
//  NewsViewModel.swift
//  HackerNewsSwiftTraining
//
//  Created by GGS-BKS on 11/01/23.
//

import Foundation

class NewsViewModel:ObservableObject {
    
    @Published var news = [Hits]()
    func fetch( ) {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
                //convert to JSON
            do{
                let courses = try JSONDecoder().decode(NewsModel.self,from: data)
                DispatchQueue.main.async {
                    self!.news = courses.hits
                }
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}
