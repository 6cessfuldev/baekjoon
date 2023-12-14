import Foundation

let t = Int(readLine()!)!

var apsum = [Int](repeating: 0, count: Int(readLine()!)!+1)
let aInputArr = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in 1...apsum.count-1 {
    apsum[i] =  apsum[i-1] + aInputArr[i-1]
}


var aDict: [Int: Int] = [:]
for i in 0..<apsum.count-1 {
    for j in i+1..<apsum.count {
        let a = apsum[j] - apsum[i]
        aDict[a, default: 0] += 1
    }
}

var bpsum = [Int](repeating: 0, count: Int(readLine()!)!+1)
let bInputArr = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in 1..<bpsum.count {
    bpsum[i] = bpsum[i-1] + bInputArr[i-1]
}

var count = 0
for i in 0..<bpsum.count-1 {
    for j in i+1..<bpsum.count {
        let b = bpsum[j] - bpsum[i]
        if aDict[t-b] != nil {
            count += aDict[t-b]!
        }
    }
}

print( count )
