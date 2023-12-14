import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]

var bottomArr = [Int](repeating: 0, count: m+1)
var upArr = [Int](repeating: 0, count: m+1)

var lowerBound = m
var upperBound = 0

for i in 0..<n {
    var input = Int(readLine()!)!

    if i%2 != 0 {
        input = m - input + 1
        upArr[input] += 1
        if lowerBound > input {
            lowerBound = input
        }
    } else {
        bottomArr[input] += 1
        if upperBound < input {
            upperBound = input
        }
    }
}

var btmPsum = [Int](repeating: 0, count: m+1)
var topPsum = [Int](repeating: 0, count: m+2)

for i in lowerBound...m {
    topPsum[i] = topPsum[i-1] + upArr[i]
}

for i in 0...upperBound {
    btmPsum[upperBound-i] = btmPsum[upperBound-i+1] + bottomArr[upperBound-i]
}

var min = Int.max
var count = 1

for i in 1...m {
    let obstacleCnt = btmPsum[i] + topPsum[i]
    if( min == obstacleCnt) {
        count += 1
    } else if( min > obstacleCnt ) {
        min = obstacleCnt
        count = 1
    } else {
        
    }
}
print("\(min) \(count)")

// 완전 탐색으로 구현할 경우 O(n^2) 복잡도

//for i in 0..<n {
//    var input = Int(readLine()!)!
//    
//    if i%2 != 0 {
//        input = m - input
//        for j in input+1...m {
//            sumArr[j] += 1
//        }
//    } else {
//        for j in 1...input {
//            sumArr[j] += 1
//        }
//    }
//}
//
//var min = Int.max;
//var count = 0;
//
//for i in 1..<sumArr.count {
//    if sumArr[i] == min {
//        count += 1
//        continue
//    } else if sumArr[i] < min {
//        min = sumArr[i]
//        count = 1
//    }
//}
//
//print("\(min) \(count)")
