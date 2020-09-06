//
//  LeetCode153.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/3.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode153: NSObject {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            if nums[left] < nums[right] {
                right -= 1
            }else if nums[left] > nums[right]{
                left += 1
            }
        }
        return nums[left]

    }
}
