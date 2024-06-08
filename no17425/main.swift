//
//  main.swift
//  no17425
//
//  Created by 육성민 on 6/8/24.
//

import Foundation

let max = 1000000
var dp = [Int](repeating: 1, count: max+1)

for i in 2...max  {
    let maxJ = max / i
    for j in 1...maxJ {
        dp[i*j] += i
    }
}

var psum = [Int](repeating: 0, count: max+1)
psum[1] = dp[1]

for i in 2..<psum.count {
    psum[i] = psum[i-1] + dp[i]
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = Int(readLine()!)!
    print(psum[input])
}

