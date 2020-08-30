//
//  LeetCode77.swift
//  algorithm
//
//  Created by DA WENG on 2020/8/30.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode77: NSObject {
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var res:[[Int]] = []
        var subAry:[Int] = []
        backTrace(&res, &subAry, k, 1,n)
        return res
    }
    
    func backTrace(_ res:inout [[Int]], _ subAry:inout[Int], _ rest:Int, _ index:Int, _ len:Int) -> Void {
        if rest == 0 {
            res.append(subAry)
            return
        }
        if index > len || len - index + 1 < rest{
            return
        }
        backTrace(&res, &subAry, rest, index+1,len)
        subAry.append(index)
        backTrace(&res, &subAry, rest-1, index+1,len)
        subAry.removeLast()
        return
    }
    
}
