//
//  LeetCode33.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/6.
//  Copyright © 2020 DA WENG. All rights reserved.
/*输入: nums = [4,5,6,7,0,1,2], target =2  5,6,7,0,1,2,4
输出: 4
*/

import UIKit

class LeetCode33: NSObject {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count-1
        while left <= right {
            let mid = left + (right - left)/2
            if nums[mid] == target {
                return mid
            }
            if(nums[mid] >= nums[left]){
                if (nums[mid] > target && nums[left] <= target)  {
                    right = mid - 1
                }else{
                    left = mid + 1
                }
            }else {
                if (nums[mid] < target && nums[right] >= target) {
                    left = mid + 1
                }else{
                    right = mid - 1
                }
            }
        }
        return -1
    }
}
