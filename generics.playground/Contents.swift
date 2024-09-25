import UIKit

var greeting = "Hello, playground"


struct F{
    
    var x = 0
    mutating func count() -> Void {
        x += 1
    }
}

var f = F()
f.count()

print(f.x)

protocol value {
    associatedtype Number
    var q:Number {get set}
    mutating func editValue(v:Number)
}

struct A : value {

    typealias Number = Int
    var q: Int = 0
    
    mutating func editValue(v: Int) {
        q = v
    }
    
//    func editValue(v: Int) {
//        print(v)
//    }
    
}

var a = A()
a.editValue(v: 12)
print(a.q)


//struct d : value {
//    var x: Int
//    
//    func editValue(v: Int) {
//        <#code#>
//    }
//    
//    typealias Number = Int
//    
//    
//    
//}

