//
//  main.swift
//  no11660
//
//  Created by 육성민 on 11/28/23.
//

import Foundation


// 기본 입력 받기
let input = readLine()!


// 정수로 입력받기
let inputInt = Int(readLine()!)!


// 끝날 때까지 계속 입력받기
var s = ""
while let readString = readLine() {
    s += readString
}


// 문자열을 Array<Character>로 받기
let ipnutArray = Array(readLine()!)


// 공백문자를 기준으로 띄워서 Array<String>으로 받기
let inputStringArray = readLine()!.components(separatedBy: " ")


// 공백문자를 기준으로 띄워서 Array<Int>로 받기
let inputIntArray = readLine()!.split(separator: " ").map{Int($0)!}


// 한 줄 정수를 Array<Int>로 입력받기
let inputIntArrayWithoutSpace = Array(readLine()!).map{Int(String($0))!}


// 공백문자를 기준으로 띄워서 이차원 배열에 Array<Int>로 받기
var inputInt2DArray = [[Int]](repeating: [Int](repeating: 0, count: 5), count: 5)
for i in 0...inputInt2DArray.count - 1 {
    inputInt2DArray[i] = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
}

// 공백문자 없이 이차원 배열에 Array<String>으로 받기
var inputString2DArray = [[String]](repeating: [String](repeating: "", count: 5), count: 5)
for i in 0...inputString2DArray.count - 1 {
    inputString2DArray[i] = Array(readLine()!.map{ String($0)})
}


