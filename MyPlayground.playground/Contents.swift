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



// ---------------------------------------
// function
// ---------------------------------------

//param X , return X
func fn_1(){ //함수의 정의
    print(">>>fn_1() 실행<<<")
}

//param O , return X
func fn_2(a:Int, b:Int){
    print("fn_2() 실행 a: \(a), b :\(b)")
}

//param X , return O
func fn_3() -> Int {
    print("fn_3() 실행")
    return 100
}

//param O , return O
func fn_4(a: Int , b: Int) -> Int {
    print("fn_4() 실행 a: \(a) , b: \(b)")
    return a + b
}

var r1 = fn_1() // 함수의 호출
var r2 = fn_2(a: 10 , b: 20)
var r3 = fn_3()
var r4 = fn_4(a: 10, b : 20)
var r4_2 = fn_4(a: 3, b: 4)

print("r1:", r1)
print("r2:", r2)
print("r3:", r3)
print("r4:", r4)
print("r4_2:", r4_2)

print("=====================")

func fn_5(argA    paramA : Int, argB     paramB : String){
        //인수이름  매개변수이름.     인수이름.  매개변수이름
    print("fn_5() 실행 inA: \(paramA), inB: \(paramB)")
    
} //인수:  함수 호출시 사용
  // 매개변수 : 함수 내부에서 사용

func fn_6(_ paramA : Int , _ paramB : String){
    print("fn_6() 실행 inA: \(paramA), inB: \(paramB)")
} //인수 : _ 작성시 명시적 인수이름 작성 생략됨, 순서가 중요함
//매개변수 : 함수 내부에서 사용

fn_5(argA: 123, argB : "장동건")
fn_6(789, "현빈")

func exam(_ name: String, _ kor: Int, _ eng: Int, _ mat: Int){
    let sum = kor + eng + mat
    let avg = sum / 3
    print("이름:" , name)
    print("sum:" , sum)
    print("avg:" , avg)
}

exam("한여울", 90, 100, 89)

func exam2(_ name: String , _ jum:[Int]){
    var sum = 0
    for j in jum {
       sum += j
    }
    let avg = sum / jum.count
    
    print("이름 : " , name)
    print("sum : " , sum)
    print("avg : " , avg)
}

exam2("한여울", [78,89,91,23])

func exam3(_ name: String, _ jum: Int...){
    var sum = 0
    for j in jum {
        sum += j
    }
    let avg = sum / jum.count
    print("이름:", name)
    print("총점:", sum)
    print("평균:", avg)
}

exam3("hamuse", 100,60,70,80,80,70)



