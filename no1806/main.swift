import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], s = input[1]

let inputArr = readLine()!.split(separator: " ").map{Int(String($0))!}

var psum = [Int](repeating: 0, count: n+1)

for i in 1...n {
    psum[i] = psum[i-1] + inputArr[i-1]
}

var a = 0;
var b = 1;

var count = Int.max
while b <= n && count != 1 {
    if( a == b ) {
        b = b + 1
    }
    
    if(psum[b] - psum[a] >= s) {
        count = b - a < count ? b - a : count
        a  += 1
        continue
    } else {
        b += 1
        continue
    }
}

print( count != Int.max ? count : 0)
