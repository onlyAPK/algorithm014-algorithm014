//
//  LeetCode455.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/6.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode455: NSObject {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted()
        let s = s.sorted()
        var child = 0
        var cook = 0
        while child<g.count && cook < s.count {
            if g[child] <= s[cook] {
                child += 1
            }
            cook += 1
        }
        return child
    }
}
