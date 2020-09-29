//
//  LeetCode200.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/27.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode200: NSObject {
    let direction = [[1,0],[-1,0],[0,1],[0,-1]]
    func numIslands(_ grid: [[Character]]) -> Int {
        var gird: [[Character]] = grid
        var count = 0
        for i in 0..<gird.count {
            for j in 0..<gird[0].count {
                if gird[i][j] == "1" {
                    dfs(&gird, i, j)
                    count+=1
                }
            }
        }
        return count
    }
    
    func dfs(_ gird:inout [[Character]], _ i:Int, _ j:Int) -> Void {
        if i < 0 || j < 0 || i >= gird.count || j >= gird[0].count || gird[i][j] == "0"{
            return
        }
        gird[i][j] = "0"
        for k in 0..<direction.count {
            dfs(&gird, i+direction[k][0], j+direction[k][1])
        }
    }
    
}
