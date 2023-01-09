//
//  stack.swift
//  tdd
//
//  Created by BKS-GGS on 09/01/23.
// LAST IN FIRST OUT

import Foundation
struct Stack{
    var array:[Int] = [2,1,3]
    mutating func push(_ element: Int) {
            array.insert(element, at: 0)
        }
    mutating func pop() -> Int {
            return array.removeFirst()
        }
        
    func peek() -> Int {
            guard let topElement = array.first else { fatalError("This stack is empty.") }
            return topElement
        }
}

