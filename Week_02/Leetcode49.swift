//
//  Leetcode49.swift
//  week2
//
//  Created by DA WENG on 2020/8/18.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class Leetcode49: NSObject {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result:[[String]] = []
        var dict:[String:Int] = [:]
        var index = 0
        let sort = strs.sorted()
        var sortAry:[String] = []
        for str in strs {
            let sortStr = str.sorted()
            let sss = String(sortStr)
            sortAry.append(sss)
        }
        for (i,str) in sortAry.enumerated() {
            if dict[str] == nil {
                dict[str] = index
                result.insert([strs[i]], at: index)
                index+=1
            }else{
                result[dict[str]!].append(strs[i])
            }
        }
        
        return result
    }
}
