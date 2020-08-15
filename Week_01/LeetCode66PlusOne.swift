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
        var result:[Int] = []
        result = digits
        var index = digits.count-1
        for i in (0..<digits.count).reversed() {
            if digits[i] > 9 {
                
            }else{
                index = i
            }
        }
        return result
    }
}
