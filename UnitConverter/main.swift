//
//  main.swift
//  UnitConverter
//
//  Created by jang gukjin on 02/04/2019.
//  Copyright © 2019 jang gukjin. All rights reserved.
//

import Foundation

//let `in` = readLine()
//print(`in`!)
//var out : Double
/*
 let str : String = "안녕하세요 장국진"
 var str2 = str.replacingOccurrences(of: "장국진", with: "")
 print(str2)
 */
/*
func input () -> String? {
    return readLine()?.trimmingCharacters(in: .whitespacesAndNewlines)
}


var `in` : String?
var out : Double

func unit(`in` : String) -> Double{
    if `in`[`in`.index(`in`.endIndex, offsetBy: -2)] == "c" && `in`[`in`.index(`in`.endIndex, offsetBy: -1)] == "m"{
        var in2 = `in`.replacingOccurrences(of: "cm", with: "")
        let a:Double? = Double(in2)
        return a! / 100
    }else if `in`[`in`.index(`in`.endIndex, offsetBy: -1)] == "m"{
        var in2 = `in`.replacingOccurrences(of: "m", with: "")
        let a:Double? = Double(in2)
        return a! * 100
    }
    else{
        return 0.00
    }
}

`in` = input()
out = unit(`in`: `in`!)

print("\(out)")
*/
/*
print("숫자와 단위를 입력하세요! : ")
var `in` = readLine()!

func converter(`in` : String){
    var unit = `in`.split(separator: " ")
    if unit.count == 2{
        if unit.contains("cm"){
            let answer : Double? = Double(unit[0])
            print("\(answer! / 100)m")
        }else if unit.contains("m"){
            let answer : Double? = Double(unit[0])
            print("\(answer! * 100)cm")
        }
    }else{
        print("단위와 숫자는 띄어써주세요!!")
    }
}
converter(in: `in`)
*/
/*(
let s = "180cm"

let end = s.index(s.endIndex, offsetBy: -1)
let start = s.index(s.endIndex, offsetBy: -2)
let sub = s[start...end]
print(sub)
*/

/*
print("숫자와 단위를 입력하세요! : ")
var str = readLine()!

func search_word(str : String){
    let search = "cm"

    let range: Range<String.Index> = str.range(of: search)!
    let location : Int = str.distance(from: str.startIndex, to: range.lowerBound)
    let end = str.index(str.endIndex, offsetBy: -1)
    let start = str.index(str.startIndex, offsetBy: location)
    let sub = str[start...end]
    print(sub)

}
*/
/*
print("숫자와 단위 그리고 바꿀 단위를 띄어써서 입력하세요! : ")
var `in` = readLine()!

func converter(`in` : String){
    var unit = `in`.split(separator: " ")
    if unit.count == 3{
        switch unit[1]{
        case "cm":
            if unit[2] == "inch"{
                let answer : Double? = Double(unit[0])
                print("\(answer! / 2.54)inch")
            }
            else if unit[2] == "m"{
                let answer : Double? = Double(unit[0])
                print("\(answer! / 100)m")
            }
            else{
                print("단위와 숫자를 똑바로 입력하세요!")
            }
        case "m":
            if unit[2] == "inch"{
                let answer : Double? = Double(unit[0])
                print("\(answer! * 100)cm이고, \(answer! / 0.0254)inch")
            }
            else if unit[2] == "cm"{
                let answer : Double? = Double(unit[0])
                print("\(answer! * 100)cm")
            }
            else{
                print("단위와 숫자를 똑바로 입력하세요!")
            }
        case "inch":
            if unit[2] == "cm"{
                let answer : Double? = Double(unit[0])
                print("\(answer! * 2.54)cm")
            }
            else if unit[2] == "m"{
                let answer : Double? = Double(unit[0])
                print("\(answer! * 2.54)cm이고, \(answer! * 0.0254)m 입니다.")
            }
            else{
                print("단위와 숫자를 똑바로 입력하세요!")
            }
        default:
            print("단위와 숫자를 똑바로 입력하세요!")
        }
    }else{
        print("단위와 숫자는 꼭 숫자, 단위, 바꿀단위를 띄어써주세요!!")
    }
}
converter(in: `in`)
*/
/*
var `in` = "180 cm inch"
var unit = `in`.split(separator: " ")
print(unit[1])
*/

//단위에따라 값 변환하는 함수들
func cmTom(cm: Double) -> Double {
    return Double(cm) / 100
}

func mTocm(m: Double) -> Double {
    return Double(m) * 100
}

func cmToinch(cm: Double) -> Double {
    return Double(cm) * 2.54
}

func inchTocm(inch: Double) -> Double {
    return Double(inch) / 2.54
}

func mToinch(m: Double) -> Double {
    return Double(m) * 0.0254
}

func inchTom(inch: Double) -> Double {
    return Double(inch) / 0.0254
}


func yardTocm(yard: Double) -> Double {
    return Double(yard) * 91.44
}

func cmToyard(cm: Double) -> Double {
    return Double(cm) / 91.44
}

func yardTom(yard: Double) -> Double {
    return Double(yard) * 0.9144
}

func mToyard(m: Double) -> Double {
    return Double(m) / 0.9144
}




/*
print("숫자와 단위 그리고 바꿀 단위를 띄어써서 입력하세요! : ")
var `in` = readLine()!

func converter(`in` : String){
    var unit = `in`.split(separator: " ")
    if unit.count == 3{
        switch (unit[1],unit[2]){
        case ("cm", "inch"):
            let answer : Double? = Double(unit[0])
            print("\(answer! / 2.54)inch")
        case ("cm", "m"):
            let answer : Double? = Double(unit[0])
            print("\(answer! / 100)m")
        case ("m", "inch"):
            let answer : Double? = Double(unit[0])
            print("\(answer! * 100)cm이고, \(answer! / 0.0254)inch")
        case ("m","cm"):
            let answer : Double? = Double(unit[0])
            print("\(answer! * 100)cm")
        case ("inch", "cm"):
            let answer : Double? = Double(unit[0])
            print("\(answer! * 2.54)cm")
        case ("inch", "m"):
            let answer : Double? = Double(unit[0])
            print("\(answer! * 2.54)cm이고, \(answer! * 0.0254)m 입니다.")
        default:
            print("단위와 숫자를 똑바로 입력하세요!")
        }
    }else{
        print("단위와 숫자는 꼭 숫자, 단위, 바꿀단위를 띄어써주세요!!")
    }
}
converter(in: `in`)
*/
//////////

var end : Int = 0

func input()->(Double?, String?, String?){
    print("숫자와 단위 그리고 바꿀 단위를 띄어써서 입력하세요! : ")
    var `in` = readLine()!
    var unit = `in`.split(separator: " ")
    if unit.count == 3{
        let number : Double? = Double(unit[0])
        print("\(number!)를 \(String(unit[1]))에서 \(String(unit[2]))로 변환!")
        return (number!, String(unit[1]), String(unit[2]))
    }
    else if unit.count == 2{
        let number : Double? = Double(unit[0])
        print("\(number!)를 \(String(unit[1]))에서 변환!")
        return (number!, String(unit[1]), nil)
    }
    else if unit.count == 1 && unit[0] == "q"{
        print("끝!!")
        end = 1
        return (nil, nil, nil)
    }
    else{
        return (nil,nil,nil)
    }
}

func unitconverter(number : Double, from : String?, to : String?){
    if to == nil{
        switch from{
        case "cm":
            print()
        case "m":
            print()
        case "inch":
            print()
        case "yard":
            print()
        default:
            print("숫자와 단위를 똑바로 입력하세요")
        }
    }
    else if from == nil{
        print("숫자와 단위를 똑바로 입력하세요")
    }
    else{
        switch (from, to){
        case ("cm", "inch"):
            print()
        case ("cm", "m"):
            print()
        case ("cm", "yard"):
            print()
        case ("m", "inch"):
            print()
        case ("m","cm"):
            print()
        case ("m", "yard"):
            print()
        case ("inch", "cm"):
            print()
        case ("inch", "m"):
            print()
        case ("inch", "yard"):
            print()
        case ("yard", "cm"):
            print()
        case ("yard", "m"):
            print()
        case ("yard", "inch"):
            print()
        default:
            print("숫자와 단위를 똑바로 입력하세요")
        }
    }
}

while end == 0{
    input()
}


////ㅎㅎㅎ
