//
//  LeetCode51.swift
//  algorithm
//
//  Created by DA WENG on 2020/9/29.
//  Copyright © 2020 DA WENG. All rights reserved.
//
/*
 输入：4
 输出：[
 [".Q..",  // 解法 1
 "...Q",
 "Q...",
 "..Q."],
 
 ["..Q.",  // 解法 2
 "Q...",
 "...Q",
 ".Q.."]
 ]
 解释: 4 皇后问题存在两个不同的解法。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/n-queens
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import UIKit

class LeetCode51: NSObject {
    func solveNQueens(_ n: Int) -> [[String]] {
        var result = [[String]]()
        var track = [String](repeating: String([Character](repeating: ".", count: n)), count: n)
        var colAry = [Int]()
        var pieAry = [Int]()
        var naAry = [Int]()
        dfs(n, &track, 0,&colAry,&pieAry,&naAry, &result)
        return result
    }
    
    func dfs(_ n: Int, _ track:inout [String],_ row:Int, _ colAry:inout [Int], _ pieAry:inout [Int], _ naAry:inout [Int], _ result:inout [[String]]) -> Void {
        if row > n-1 {
            let r = track
            result.append(r)
            return
        }
        for col in 0..<n {
//            if !isEligible(track, row, col) {
//                continue
//            }
            if colAry.contains(col) || pieAry.contains(col+row) || naAry.contains(row-col) {
                continue
            }
            var chars = [Character](track[row])
            chars[col] = "Q"
            track[row] = String(chars)
            colAry.append(col)
            pieAry.append(col+row)
            naAry.append(row-col)
            dfs(n, &track, row+1,&colAry,&pieAry,&naAry, &result)
            chars[col] = "."
            track[row] = String(chars)
            colAry.removeLast()
            pieAry.removeLast()
            naAry.removeLast()
            
        }
    }
    
    func isEligible(_ track:[String], _ row:Int, _ col:Int) -> Bool{
        //正上方
        for i in 0..<row {
            if [Character](track[i])[col] == "Q" {
                return false
            }
        }
        
        //右上角
        var rightUP = row - 1
        var rightLef = col + 1
        while rightUP >= 0 && rightLef < track[row].count {
            if [Character](track[rightUP])[rightLef] == "Q" {
                return false
            }
            rightUP -= 1
            rightLef += 1
        }
        
        //左上角
        var leftUP = row - 1
        var leftLef = col - 1
        while leftLef >= 0 && leftUP >= 0 {
            if [Character](track[leftUP])[leftLef] == "Q" {
                return false
            }
            leftUP -= 1
            leftLef -= 1
        }
        return true
    }
}
