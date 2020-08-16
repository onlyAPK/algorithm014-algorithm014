//
//  LeetCode66PlusOne.swift
//  week1
//
//  Created by DA WENG on 2020/8/12.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode66PlusOne: NSObject {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for i in (0..<digits.count).reversed() {
            if digits[i] > 8 {
                result[i] = 0
                if i==0 {
                    result.insert(1, at: 0)
                }
            }else{
                result[i] = digits[i]+1
                break
            }
        }
        return result
    }
}
