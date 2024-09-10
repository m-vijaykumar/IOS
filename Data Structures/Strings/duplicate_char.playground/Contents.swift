import UIKit

var str = "Hello, playground"

var hashtable:[Character:Int] = [:]

for ch in str{
    
    if ch != " " {
        hashtable[ch , default: 0] += 1
    }
}

for (key,value) in hashtable {
    
    if value >= 2 {
        print(key , value)
    }
}
