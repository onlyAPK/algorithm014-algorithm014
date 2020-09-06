//
//  LeetCode74.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/2.
//  Copyright © 2020 DA WENG. All rights reserved.
//
import UIKit

class LeetCode74: NSObject {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var sortAy:[Int] = []
        for i in 0 ..< matrix.count {
            let ary = matrix[i]
            sortAy.append(contentsOf:ary.map{$0})
        }
        var left = 0
        var right = sortAy.count - 1
        while left <= right {
            let mid = (left + right)/2
            if sortAy[mid] == target {
                return true
            }else if sortAy[mid] < target{
                left = mid + 1
            }else if sortAy[mid] > target{
                right = mid - 1
            }
        }
        return false
    }
}
