//
//  LeetCode64.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/20.
//  Copyright © 2020 DA WENG. All rights reserved.
//

import UIKit

class LeetCode64: NSObject {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let n = grid.count
        let m = grid[0].count
        if n == 0 || m == 0 {
            return 0
        }
        var dp = Array(repeating: Array(repeating: Int.max, count: m + 1), count: n + 1)
        for i in 0..<n {
            for j in 0..<m {
                if(i==0 && j==0){ //机器人出发点
                    dp[i][j] = grid[i][j];
                }else if(i==0){
                    dp[i][j] = dp[i][j-1] + grid[i][j];
                }else if(j==0){
                    dp[i][j] = dp[i-1][j] + grid[i][j];
                }else{
                    dp[i][j] = min(dp[i-1][j],dp[i][j-1]) + grid[i][j];
                }
            }
        }
        return dp[n-1][m-1]
    }
}
