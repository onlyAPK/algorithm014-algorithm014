//
//  LeetCode46.swift
//  algorithm
//
//  Created by DA WENG on 2020/8/30.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode46: NSObject {
    func permute(_ nums: [Int]) -> [[Int]] {
        var visited:[Int] = Array(repeating: 0, count: nums.count)
        var tempAry:[Int] = []
        var res:[[Int]] = []
        backTrack(&res, nums, &tempAry, &visited)
        return res
    }
    
    func backTrack(_ res:inout [[Int]], _ nums:[Int], _ tempAry:inout [Int], _ visited:inout [Int] ){
        if tempAry.count == nums.count {
            res.append(tempAry)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == 1 {
                continue
            }
            visited[i] = 1
            tempAry.append(nums[i])
            backTrack(&res, nums, &tempAry, &visited)
            visited[i] = 0
            tempAry.removeLast()
        }
    }
}
