//
//  LeetCode88MergeSortedArray.swift
//  week1
//
//  Created by DA WENG on 2020/8/12.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit
var num1 = [2,6]
let m = 3
let num2 = [2,3,5]
let n = 3
class LeetCode88MergeSortedArray: NSObject {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m-1
        var p2 = n-1
        var p = m+n-1
        while p1>=0&&p2>=0 {
            if nums1[p2] >= nums2[p1] {
                nums1[p] = nums2[p2]
                p2-=1
            }else{
                nums1[p] = nums1[p1]
                p1-=1
            }
            p-=1
        }
        for i in 0..<(p2+1) {
            nums1[i] = nums2[i]
        }
    }

}
