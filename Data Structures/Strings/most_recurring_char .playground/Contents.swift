import UIKit

var str = "Hello, payground"

var hashTable:[Character  : Int] = [:]

var rch:Character = str[str.startIndex]
var rv: Int = 1

for ch in str {
    
    if ch != " " {
        
        hashTable[ch, default: 0] += 1;
        
        if rv <= hashTable[ch]! {
            rv = hashTable[ch]!
            rch = ch
        }
    }
}


print(hashTable)

print("\(rch)  :  \(rv)")
