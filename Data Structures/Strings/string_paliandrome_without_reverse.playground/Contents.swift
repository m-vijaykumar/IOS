import UIKit

var greeting = "Hello, playground"


func isPal(str: String) -> Bool {
    var last_index = str.index(before: str.endIndex)
    var first_index = str.startIndex
    for i in 0..<(str.count/2){
        
        print("\(str[first_index])   \(str[last_index])" )
        
        if str[first_index] != str[last_index] {
            
            return false
        }
            //decresing last pointer
            last_index = str.index(before: last_index)
            
            // incresing the
            first_index = str.index(after: first_index)
    }
    
    return true;
}

var n = "hvfybghgb"

print(isPal(str: n))

