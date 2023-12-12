import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var table = [[Int]](repeating:[Int](repeating: 0, count: m+1), count: n+1)
for i in 1...n {
    let arr = readLine()!.split(separator:" ").map{Int($0)!}
    for j in 1...m {
        table[i][j] = table[i][j-1] + table[i-1][j] + arr[j-1] - table[i-1][j-1]
    }
}

let ijxyInput = Int(readLine()!)!
for _ in 0..<ijxyInput {
    let inputArr = readLine()!.split(separator: " ").map{Int($0)!}
    let i = inputArr[0], j = inputArr[1], x = inputArr[2], y = inputArr[3]
    let sum = table[x][y] - table[x][j-1] - table[i-1][y] + table[i-1][j-1]
    print(sum)
}
