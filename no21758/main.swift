//
//  main.swift
//  no21758
//
//  Created by 육성민 on 6/9/24.
//

import Foundation

// 입력값 받기
let N = Int(readLine()!)!
let inputArray = readLine()!.split(separator: " ").map{Int($0)!}

// 누적 합 구하기
var psum = [Int](repeating: 0, count: N+1)
psum[1] = inputArray[0]
for i in 1...N {
    psum[i] = psum[i-1] + inputArray[i-1]
}

var maxHoney = 0

// Case 1 : 꿀통 벌 벌
// 꿀통이 가장 왼쪽, 두번째 벌이 가장 오른쪽
for i in 2...N-1 {
    maxHoney = max(maxHoney, psum[N-1] - inputArray[i-1] + psum[i-1] )
}

// Case 2 : 벌 꿀통 벌
for i in 2...N-1 {
    maxHoney = max(maxHoney, psum[N-1] - inputArray[0] + inputArray[i-1])
}

// Case 3 : 벌 벌 꿀통
for i in 2...N-1 {
    maxHoney = max(maxHoney, psum[N] - inputArray[0] - inputArray[i-1] + psum[N] - psum[i] )
}

print(maxHoney)
