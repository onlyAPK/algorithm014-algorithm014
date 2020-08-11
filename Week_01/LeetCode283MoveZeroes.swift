//
//  LeetCode283MoveZeroes.swift
//  week1
//
//  Created by DA WENG on 2020/8/12.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit
//[0,1,0,3,12]
class LeetCode283MoveZeroes: NSObject {
    func moveZeroes(_ nums: inout [Int]) {
        var slow = 0
        for fast in 0..<nums.count {
            if nums[fast] != 0 {
                let temp = nums[slow]
                nums[slow] = nums[fast]
                nums[fast] = temp
                slow+=1
            }
        }
        
    }
}
