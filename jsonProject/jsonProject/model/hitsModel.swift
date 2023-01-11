//
//  hitsModel.swift
//  jsonProject
//
//  Created by BKS-GGS on 10/01/23.
//

import Foundation
import UIKit
struct hitsModel:Decodable
{
    var hits : [Hits]?
}
struct Hits:Decodable{
    var title:String?
    var url:String?
    var points:Int?
}



