import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let inputArr = readLine()!.split(separator: " ").map{Int($0)!}

var psum = [Int](repeating: 0, count: n + 1)

for i in 1...n {
    psum[i] = psum[i - 1] + inputArr[i - 1]
}
var cnt = 0

if( psum[0] == 5 ) {
    cnt += 1
}

var a = 0
var b = 1
while b <= n {
    if( a == b ) {
        b += 1
        continue
    }
    if (psum[b] - psum[a] < m ) {
        b += 1
    } else if (psum[b] - psum [a] > m ) {
        a += 1
    } else {
        cnt += 1
        a += 1
    }
}

print(cnt)
