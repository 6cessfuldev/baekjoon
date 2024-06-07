//
//  main.swift
//  no21921
//
//  Created by 육성민 on 6/7/24.
//

import Foundation

guard let firstLane = readLine(), let secondLine = readLine() else {
    fatalError()
}

let firstLineComponents = firstLane.split(separator: " ").map { Int($0)! }
let n = firstLineComponents[0] // 블로그 시작된 이후 일수
let x = firstLineComponents[1] // 정해진 기간(일수)

let visitorCounts = secondLine.split(separator: " ").map { Int($0)! }

var maxVisitors = 0
var maxEqualCount = 0
var cumSum = [Int](repeating: 0, count: n+1)

cumSum[0] = visitorCounts[0]
for i in 1...n {
    cumSum[i] = cumSum[i-1] + visitorCounts[i-1]
}

for i in x...n {
    let currentSum = cumSum[i] - cumSum[i-x]
    if currentSum > maxVisitors {
        maxVisitors = currentSum
        maxEqualCount = 1
    } else if currentSum == maxVisitors && maxVisitors > 0 {
        maxEqualCount += 1
    } else {}
}

if maxVisitors > 0 {
    print(maxVisitors)
    print(maxEqualCount)
} else {
    print("SAD")
}

