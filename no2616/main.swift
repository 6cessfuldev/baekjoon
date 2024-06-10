//
//  main.swift
//  no2616
//
//  Created by 육성민 on 6/10/24.
//

import Foundation

let trainCnt = Int(readLine()!)!
let passangerCnts = readLine()!.split(separator: " ").map{Int($0)!}
let allowance = Int(readLine()!)!

var psum = [Int](repeating: 0, count: trainCnt+1)
psum[1] = passangerCnts[0]
for i in 2...trainCnt {
    psum[i] = psum[i-1] + passangerCnts[i-1]
}

var sumMax: Int = 0
var firstTrainSum = 0
var secondTrainSum = 0
var thirdTrainSum = 0

var dp = [[Int]](repeating: [Int](repeating: 0, count: trainCnt+1), count: 4)

for i in 1...3 {
    // j 는 첫번쨰 객차 위치
    for j in (1 + (i-1)*allowance)...(trainCnt-(4-i)*allowance + 1) {
        if(i == 1) {
            dp[i][j] = max(dp[i][j-1], psum[j+allowance-1] - psum[j-1])
        } else {
            dp[i][j] = max(dp[i][j-1], dp[i-1][j-allowance] + psum[j+allowance-1] - psum[j-1])
        }
        
    }
}

print(dp[3][trainCnt-allowance+1])

