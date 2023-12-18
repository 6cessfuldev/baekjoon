//
//  main.swift
//  no11441
//
//  Created by 육성민 on 12/18/23.
//

import Foundation

let n = Int(readLine()!)!

var psum: [Int] = [Int](repeating: 0, count: n+1)

let nArr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 1...n {
    psum[i] = psum[i-1] + nArr[i-1]
}

for _ in 0...Int(readLine()!)!-1 {
    let inputArr = readLine()!.split(separator: " ").map{Int(String($0))!}
    print(psum[inputArr[1]] - psum[inputArr[0]-1])
}
