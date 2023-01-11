//
//  NewsResource.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

struct NewsResource
{
    
    func getNewsData(completion:@escaping(_ result:NewsModel?) -> Void)
    {
        let filterEndPoint = ApiEndPoint.baseUrl
        guard let urlRequest = URL(string: filterEndPoint) else{return}
        
        HttpUtility.shared.getApiData(urlRequest: urlRequest, responseType:NewsModel.self) { (newsApiResponse) in
            
            _=completion(newsApiResponse)
            
        }
        
    }
}
