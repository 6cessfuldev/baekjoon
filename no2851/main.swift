import Foundation

var psum = [Int](repeating: 0, count: 11)
for i in 1...10 {
    psum[i] = psum[i-1] + Int(readLine()!)!
    if psum[i] == 100 {
        print(psum[i])
        break;
    } else if psum[i] > 100 {
        print(100 - psum[i-1] >= psum[i] - 100 ? psum[i] : psum[i-1])
        break;
    } else if i == 10 {
        print(psum[i])
    }
}
