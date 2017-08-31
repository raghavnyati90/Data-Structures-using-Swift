//: Playground - noun: a place where people can play

import UIKit

//Declaring single dimensional array
var myIntArray: [Int] = [1,3,5,7,9]

//declaring multidimensional array
var my2DArray: [[Int]] = [[1,2], [10,11], [20, 30]]

//iterating thru array elements
for element in myIntArray{
    print(element)
}

//subset of array
var someSubset = myIntArray[2...4]
print(someSubset) //because it prints value for myIntArray[2], myIntArray[3] and myIntArray[4]

//adding element to existing array
myIntArray.append(10)

//adding element at specific index
myIntArray.insert(4, at: 2)

//removing element from end of array
myIntArray.removeLast()

//removing element from specific index
myIntArray.remove(at: 2)


