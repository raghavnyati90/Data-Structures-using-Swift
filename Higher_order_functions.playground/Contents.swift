//: Playground - noun: a place where people can play

import UIKit

let number = [1, 2, 3, 4, 3, 3]

//1. Filter into [3, 3, 3], then filter into [2, 4] even numbers
let a = number.filter({return $0 == 3})
a
let b = number.filter({return $0 % 2 == 0})
b
//Here a and b are immutables and we don't want our variables to alter. 


//2. Transform [1, 2, 3, 4] -> [2, 4, 6, 8]
let c = [1, 2, 3, 4].map({$0 * 2})
c


//3. Sum [1, 2, 3, 4] -> 10 using reduce
let d = [1, 2, 3, 4].reduce(0, {return $0 + $1})
d
let d1 = [1, 2, 3, 4].reduce(2, {return $0 + $1})
d1

