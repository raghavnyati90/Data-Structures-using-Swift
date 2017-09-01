//: Playground - noun: a place where people can play

import UIKit

var list: [Int] = [10, 51, 43, 36, 67, 81, 23, 31, 43, 83, 90, 6, 29]

//function implementing insertion sort using inout parameter
func insertionSort( sampleList: inout [Int]){
    for i in 1..<sampleList.count {
        let temp = sampleList[i]
        var j = i - 1
        while j >= 0 && sampleList[j] > temp {
            sampleList[j+1] = sampleList[j]
            j = j - 1
        }
        sampleList[j+1] = temp
    }
}

insertionSort(sampleList: &list)

