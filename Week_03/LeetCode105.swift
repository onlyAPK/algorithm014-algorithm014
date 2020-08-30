//
//  LeetCode105.swift
//  algorithm
//
//  Created by DA WENG on 2020/8/30.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode105: NSObject {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var midIndex:[Int:Int] = [:]
        for (index,value) in inorder.enumerated() {
            midIndex[value] = index
        }
        return buildTreeByMethod(preorder,0,preorder.count-1,midIndex,0,inorder.count-1)
    }
    
    func buildTreeByMethod(_  preorder:[Int],_ preLeft:Int,_ preRight:Int,_ indexDict:[Int:Int],_ inLeft:Int,_ inRight:Int) -> TreeNode?  {
        if preLeft>preRight || inLeft > inRight {
            return nil
        }
        let rootVal = preorder[preLeft]
        let root = TreeNode(rootVal)
        let pIndex = indexDict[rootVal]!
        root.left = buildTreeByMethod(preorder , preLeft + 1 , pIndex - inLeft + preLeft , indexDict , inLeft , pIndex - 1)
        root.right = buildTreeByMethod(preorder, pIndex - inLeft + preLeft + 1, preRight, indexDict, pIndex + 1, inRight)
        return root
        
    }

}
