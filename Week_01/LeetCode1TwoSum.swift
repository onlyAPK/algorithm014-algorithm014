//
//  LeetCode1TwoSum.swift
//  week1
//
//  Created by DA WENG on 2020/8/12.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode1TwoSum: NSObject {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict:[Int:Int] = [:]
        for i in 0..<nums.count {
            let delta = target - nums[i]
            if dict.keys.contains(delta) {
                let deltaIndex = dict[delta]!
                if deltaIndex != i {
                    return [deltaIndex,i]
                }
            }
            dict[nums[i]] = i
        }
        return []
    }
}
