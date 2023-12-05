//
//  main.swift
//  no11660
//
//  Created by 육성민 on 12/3/23.
//

import Foundation

// 입력받기
let NMInput : Array<Int> = readLine()!.split(separator: " ").map{Int($0)!}
let N : Int = NMInput[0]
let M : Int = NMInput[1]

var table : [[Int]] = [[Int](repeating: 0, count: N+1)]

for _ in 0..<N {
    table.append([0] + readLine()!.split(separator: " ").map{Int(String($0))!})
}

for y in 1...N {
    for x in 1...N {
        table[y][x] += table[y-1][x] + table[y][x-1] - table[y-1][x-1];
    }
}

for _ in 0..<M {
    let inputArray : [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    let y1 = inputArray[0], x1 = inputArray[1], y2 = inputArray[2], x2 = inputArray[3]
    print(table[y2][x2] - table[y1-1][x2] - table[y2][x1-1] + table[y1-1][x1-1])
}


