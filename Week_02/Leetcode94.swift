//
//  Leetcode94.swift
//  week2
//
//  Created by DA WENG on 2020/8/20.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit
//94. 二叉树的中序遍历
class Leetcode94: NSObject {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
           var result : [Int] = []
           if root == nil {
               return []
           }
           if root?.left != nil {
               result += inorderTraversal(root?.left)
           }
           result.append(root!.val)
           if root?.right != nil{
               result += inorderTraversal(root?.right)
           }
           
           return result
       }
}
