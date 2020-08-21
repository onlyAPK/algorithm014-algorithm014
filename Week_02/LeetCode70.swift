//
//  LeetCode70.swift
//  week2
//
//  Created by DA WENG on 2020/8/20.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit
//f(n) =f(n-2)+f(n-1)
class LeetCode70: NSObject {
    func climbStairs(_ n: Int) -> Int {
        if n<3 {
            return n
        }
        var f1 = 1
        var f2 = 2
        var f3 = 3
        for i in 3..<n {
            f3 = f2 + f1
            f1 = f2
            f2 = f3
        }
        return f3
    }
}
