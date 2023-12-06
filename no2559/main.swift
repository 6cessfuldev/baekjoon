import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0], m = input[1]

let inputArr = readLine()!.split(separator: " ").map{Int($0)!}

var psum = [Int](repeating: 0, count: n + 1)

for i in 1...n {
    psum[i] = psum[i-1] + inputArr[i-1]
}

var max = Int.min;
for i in m...n {
    if( max < psum[i] - psum[i-m] ) {
        max = psum[i] - psum[i-m]
    }
}
print(max)
