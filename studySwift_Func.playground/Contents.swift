import UIKit

var str = "Hello, playground"

func fn_1() -> Int{
    print("fn_1() 실행")
    return 100
}

func fn_2()->[Int]{
    print("fn_2() 실행")
    
    return [10,20]
}

func fn_3()-> (Int, Int){
    print("fn_3() 실행")
    return (111, 222)
}

func fn_4()->[Any] {
    print("fn_4() 실행")
    return ["한여울", 89, 09, 04]
}

func exam1(_ name: String, _ jum: Int...)->[Any]{
    var sum = 0
    
    for j in jum {
        sum += j
    }
    let avg = sum / jum.count
    return [name, sum, avg, 1]
}

print("fn_1 결과:" , fn_1())
print("fn_2 결과:" , fn_2()[0])
print("fn_3 결과:" , fn_3())
print("fn_4 결과:" , fn_4())
print("exam1 결과:" , exam1("한여울", 100,99,77))

var studs = [
    exam1("한여울", 99,88,77),
    exam1("여울", 100,88,77),
    exam1("울", 99,48,77),
    exam1("여리", 67,88,67),
    exam1("hamuse", 99,38,75),
]

// 등수 계산

for i in 0..<studs.count {
    var meAvg = Int ("\(studs[i][2])")!
    var rank = 1
    
    print(meAvg, terminator:":")
    
    for you in studs {
        var youAvg = Int("\(you[2])")!
        
        if meAvg < youAvg {
            rank += 1
        }
        print(youAvg, terminator:",")
    }
    studs[i][3] = rank
    print(studs[i][3])
}

print("======================================")

for st in studs {
    print(st)
}

print("=======================================")

func examTot(_ aaa:[[Any]]){ //매개변수는 상수로 들어옴
    var args = aaa //매개변수가 상수여서 변수로 값을 대입하여 변수로 처리
    
    for i in 0..<args.count {
        var meAvg = Int("\(args[i][2])")!
        var rank = 1
        
        for you in args {
            var youAvg = Int("\(you[2])")!
            
            if meAvg < youAvg {
                rank += 1
            }
        }
        args[i][3] = rank
    }
    print("=================================")
    for st in args{
        print(st)
    }
}
examTot([
    exam1("한여울",66,68,62),
    exam1("여울",86,88,82),
    exam1("여리",76,78,72),
    exam1("울",56,58,52),
    exam1("hamuse",96,98,92),
    ])



