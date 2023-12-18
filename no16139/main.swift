//
//  main.swift
//  no16139
//
//  Created by 육성민 on 12/18/23.
//

import Foundation

let chaArr: [Character] = Array(readLine()!)
let q = Int(readLine()!)!

//이차 배열로 a~z까지에 대한 누적합 배열
var psum: [[Int]] =
    [[Int]](repeating: [Int](repeating: 0, count: chaArr.count+1), count: Int(UnicodeScalar("z").value)-Int(UnicodeScalar("a").value)+1)
// 특정 문자에 대해 누적합을 이미 계산했는지에 대한 여부
var psumCheck: [Bool] = [Bool](repeating: false, count: Int(UnicodeScalar("z").value)-Int(UnicodeScalar("a").value)+1)


for _ in 0..<q {
    let inputArr = readLine()!.split(separator: " ").map{String($0)}
    let charIndex = Int(UnicodeScalar(inputArr[0])!.value) - Int(UnicodeScalar("a").value)
    if !psumCheck[charIndex] {
        calculatePsum(inputArr[0])
        psumCheck[charIndex] = true
    }
    print( psum[charIndex][Int(inputArr[2])!+1] - psum[charIndex][Int(inputArr[1])!])
}

func calculatePsum (_ alphabet: String) {
    let index = Int(UnicodeScalar(alphabet)!.value)-Int(UnicodeScalar("a").value)
    for i in 1...chaArr.count {
        psum[index][i] = psum[index][i-1] + (chaArr[i-1] == Character(alphabet) ? 1 : 0)
    }
}
