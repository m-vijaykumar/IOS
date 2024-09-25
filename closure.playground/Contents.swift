import UIKit


var add = {(_ a:Int , _ b :Int , _ c : Int) -> Int in
    return a + b + c
}

print(add(1,2,3))

var mult = {(_ a:Int , _ b :Int , _ c : Int) -> Int in
    return a * b * c
}

print(mult(1,2,3))

var celsiusToFeharenheit = {(_ temp :Double ) -> Double in
    return ( temp * ( 9/5))+32
}

print(celsiusToFeharenheit(32))
