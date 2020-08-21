//
//  Leetcode144.swift
//  week2
//
//  Created by DA WENG on 2020/8/19.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        
    }
}
//144. 二叉树的前序遍历
class Leetcode144: NSObject {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        guard let root = root else { return [] }
        res.append(root.val)
        res += preorderTraversal(root.left)
        res += preorderTraversal(root.right)
        return res
    }
}

