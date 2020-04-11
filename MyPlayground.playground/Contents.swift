import UIKit

var str = "Hello, playground"
print(str)

let name = "장동건"
print(name)

str = "안녕 김태희"

var name2 : String = "문자열 2 입니다."
print(name2)

var kor : Int  = 98
var eng : Int = 94
var mat : Int = 39

var sum : Int = kor + eng + mat
print(sum)

var avg : Float = 2.3

avg = Float(sum) / 3

print(avg)

var avgStr : String = ""

avgStr = "평균: \(avg)"
print(avgStr)

var grade = avg >= 90 ? "수" : avg >= 80 ? "우" : avg >= 70 ? "미" : avg >= 60 ? "양" : "가"

print(grade)

var grade2 = ""

if avg >= 90 {
    grade2 = "수"
} else if avg >= 80 {
    grade2 = "우"
} else if avg >= 70 {
    grade2 = "미"
} else if avg >= 60 {
    grade2 = "양"
} else {
    grade2 = "가"
}

print("등급 2 : " + grade2)

var str1 : String = "123"
var ii : Int = Int(str1)!
print(type(of: str1))
print(type(of: ii))

var ii2 = 456 + ii
print(ii2)

