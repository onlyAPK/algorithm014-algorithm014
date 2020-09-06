//
//  LeetCode122.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/6.
//  Copyright © 2020 DA WENG. All rights reserved.
//
/*输入: [7,1,5,3,6,4]
输出: 7
 */
import UIKit

class LeetCode122: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        for i in 0 ..< prices.count - 1 {
            if prices[i] < prices[i+1] {
                result += prices[i+1] - prices[i]
            }
        }
        return result
    }
}
