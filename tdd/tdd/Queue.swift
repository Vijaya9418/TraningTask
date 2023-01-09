//
//  queue.swift
//  tdd
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation
struct Queue{
    var array:[Int] = [2,1,3]
    mutating func push(_ element: Int) {
        array.insert(element, at: array.last!)
        }
    mutating func pop() -> Int {
            return array.removeFirst()
        }

}
