//
//  Leetcode1.swift
//  week2
//
//  Created by DA WENG on 2020/8/18.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class Leetcode1: NSObject {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       var dict:[Int:Int] = [:]
        for i in 0..<nums.count {
            let num = nums[i]
            let delt = target - num
            if dict.keys.contains(delt) && dict[delt] != i{
                return [dict[delt]!,i]
            }
            dict[num] = i
        }
        return []
    }
}
