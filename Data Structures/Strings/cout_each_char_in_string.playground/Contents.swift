import UIKit

var str = "Hello, playground"

var hashTable:[String  : Int] = [:]

for ch in str {
    
    if ch != " "{
        hashTable[String(ch), default: 0] += 1;
    }
}


print(hashTable)
