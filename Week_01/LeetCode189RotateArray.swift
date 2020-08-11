//
//  LeetCode189RotateArray.swift
//  week1
//
//  Created by DA WENG on 2020/8/11.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode189RotateArray: NSObject {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for i in 0..<k {
            var needToSwitch = nums[nums.count-1]
            for j in 0..<nums.count {
                let temp = nums[j]
                nums[j] = needToSwitch
                needToSwitch = temp
            }
        }
    }
    
    func rotate_method2(_ nums: inout [Int], _ k: Int) {
        if(nums.count<2){
            return
        }
        let knums = k%nums.count//取余是关键
        nums.reverse()
        self.rotateArray(&nums, start: 0, end: knums-1)
        self.rotateArray(&nums, start: knums, end: nums.count-1)
    }
    
    func rotateArray(_ nums: inout [Int],start:Int,end:Int){
        var left = start
        var right = end
        while left<right {
            let tmp = nums[right]
            nums[right] = nums[left]
            nums[left] = tmp
            left+=1
            right-=1
        }
        
    }
}
