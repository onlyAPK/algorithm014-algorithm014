//
//  LeetCode263.swift
//  algorithm
//
//  Created by DA WENG on 2020/8/26.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode263: NSObject {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || root === q || root === p {
            return root
        }
        let leftNode = lowestCommonAncestor(root?.left, p, q)
        let rightNode = lowestCommonAncestor(root?.right, p, q)
        if leftNode != nil && rightNode != nil{
            return root
        }
        return (leftNode != nil) ? leftNode : rightNode
    }
}
