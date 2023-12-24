//
//  main.swift
//  no10211
//
//  Created by 육성민 on 12/25/23.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let xLength = Int(readLine()!)!
    let x = readLine()!.split(separator:" ").map{Int64(String($0))!}
    var psum = [Int64](repeating: 0, count: xLength+1)
    for i in 1...xLength {
        psum[i] = psum[i-1] + x[i-1]
    }
    var max = Int64.min
    for i in 0..<xLength {
        for j in i+1...xLength {
            let temp = psum[j] - psum[i]
            if max < temp {
                max = temp
            }
        }
    }
    print(max)
    
}



