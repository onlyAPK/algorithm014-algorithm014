//
//  LeetCode191.swift
//  algorithm
//
//  Created by DA WENG on 2020/10/7.
//  Copyright © 2020 DA WENG. All rights reserved.
//
/*
 输入：00000000000000000000000000001011
 输出：3
 解释：输入的二进制串 00000000000000000000000000001011 中，共有三位为 '1'。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/number-of-1-bits
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import UIKit

class LeetCode191: NSObject {
    func hammingWeight(_ n: Int) -> Int {
        var result = 0
        var n = n
        while n>0 {
            n = n&(n-1)
            result += 1
        }
        return result
    }
}
