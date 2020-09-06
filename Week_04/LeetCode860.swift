//
//  LeetCode860.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/2.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode860: NSObject {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var five = 0
        var ten = 0
        var twenty = 0
        for (_,money) in bills.enumerated() {
            if money == 5 {
                five += 1
            }else if money == 10{
                five -= 1
                ten += 1
            }else{
                twenty += 1
                if ten == 0 {
                    five -= 1
                    five -= 1
                    five -= 1
                }else if(five == 0){
                    return false
                }else{
                    ten -= 1
                    five -= 1
                }
            }
            if(five<0 || ten < 0){
                return false
            }
        }
        
        return true
    }
}
