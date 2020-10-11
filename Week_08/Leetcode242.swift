//
//  Leetcode242.swift
//  week2
//
//  Created by DA WENG on 2020/8/18.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class Leetcode242: NSObject {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sAry = s.map{$0}
        let tAry = t.map{$0}
        if sAry.count != tAry.count {
            return false
        }
        var dict:[Character:Int] = [:]
        for chart:Character in sAry {
            if dict[chart] == nil{
                dict[chart] = 1
            }else{
                dict[chart]! += 1
            }
        }
        for char:Character in tAry {
            if (dict[char] != nil) {
                dict[char]! -= 1
            }
        }
        for val in dict.values {
            if val != 0 {
                return false
            }
        }
       
        return true
    }
}
