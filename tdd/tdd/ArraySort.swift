//
//  ArraySort.swift
//  tdd
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct ArraySort{
    
    var array:[Int] = []
    
   mutating func add(n:Int) {
       if array.contains(n){
       return
       }
        array.append(n)
    }
    
    func addAll(`var` array:[Int]) -> Int{
    let unique = Array(Set(array))
    var n = 0
    for i in unique {
        n += i
    }
        return n;
    }

    
    func max(`var` array:[Int32]) -> Int32 {
            var ans = INT16_MIN
            for x in array {
                if(x>ans){
                    ans=x;
                }
            }
            return ans;
        }
    func min(`var` array:[Int32]) -> Int32 {
            var ans = INT_MAX
            for x in array {
                if(x<ans){
                    ans=x;
                }
            }
            return ans;
        }
    
    func deleteFromIndex(element:Int32,`var` array:[Int32]) -> [Int32] {
        var unique = Array(array)
        unique.remove(at: Int(element))
        return unique;
    }
    
    func deleteFromFirstIndex(`var` array:[Int32]) -> [Int32] {
        var unique = Array(array)
        unique.removeFirst()
        return unique;
    }
    
    func deleteFromLastIndex(`var` array:[Int32]) -> [Int32] {
        var unique = Array(array)
        unique.removeLast()
        return unique;
    }
    
    func isExists( element:Int32,`var` array:[Int32]) -> Bool {
        if array.contains(element){
        return true
        }
        else{
        return false
        }
    }
    
    
}
