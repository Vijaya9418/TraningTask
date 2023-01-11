//
//  NewsViewModel.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation


class NewsViewModel {
    var delegate: ViewController?
func newsData(completion:@escaping(_ result:NewsModel?) -> Void)
    {
        let newsResource = NewsResource()
        
        newsResource.getNewsData { (newsApiResponse) in
            _=completion(newsApiResponse)
            
        }
    }
}
