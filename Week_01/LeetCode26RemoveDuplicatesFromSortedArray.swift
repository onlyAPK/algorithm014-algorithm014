//
//  LeetCode26RemoveDuplicatesFromSortedArray.swift
//  test
//
//  Created by DA WENG on 2020/8/11.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode26RemoveDuplicatesFromSortedArray: NSObject {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count<2 {
            return nums.count
        }
        var slow = 0;
        for fast in 1..<nums.count {
            if nums[slow] != nums[fast] {
                slow+=1
                nums[slow]=nums[fast]
            }
        }
        return slow+1
    }
}
