import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]

let inputArr = readLine()!.split(separator: " ").map{Int(String($0))!}
var psum = [Int](repeating: 0, count: n+1)
var surplus = [Int](repeating: 0, count: m)


//나머지가 같은 psum의 빈도수
for i in 1...n {
    psum[i] = psum[i-1] + inputArr[i-1]
    surplus[psum[i]%m] += 1
    
}

var count : Int = surplus[0]

for i in 0..<m {
    count += comb(surplus[i], 2)
}

print(count)

func comb (_ n: Int, _ m: Int) -> Int {
    if n < 2 {
        return 0
    }
    return n * (n - 1)/m
}
