//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var numbersArray = [11,  23, 43, 44, 59, 43, 88, 92, 58, 11, 13, 14, 15]

for number in numbersArray {
    if number % 3 == 0{
        print("\(number)")
    }
}

let largestNumber = numbersArray.maxElement()

func join<T : Equatable>(objs: [T], separator: String) -> String {
    return objs.enumerate().reduce("") {
        sum, indexAndObj in
        let maybeSeparator = (indexAndObj.0 == objs.count - 1) ? "" : separator
        return "\(sum)\(indexAndObj.1)\(maybeSeparator)"
    }
}

let sentence = [ "I", "love", "Dev Mountain" ]
let commaSeparatedFruits = join(sentence, separator: " ")


