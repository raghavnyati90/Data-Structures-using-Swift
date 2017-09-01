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

//implementing merge sort using nested functions 
//check the total number of iterations required for Insertion sort and merge sort to sort the same array elements. 
//This proves that insertion sort is better than the merge sort algorithm.
func mergeSort<T: Comparable>(sampleList: inout [T]) {
    if sampleList.count <= 1 {
        return
    }
    func merge( left:[T], right:[T]) -> [T] {
        var left = left
        var right = right
        var result = [T]()
        while left.count != 0 && right.count != 0 {
            if left[0] <= right[0] {
                result.append(left.remove(at: 0))
            } else {
                result.append(right.remove(at: 0))
            }
        }
        while left.count != 0 {
            result.append(left.remove(at: 0))
        }
        while right.count != 0 {
            result.append(right.remove(at: 0))
        }
        return result
    }
    var left = [T]()
    var right = [T]()
    let mid = sampleList.count / 2
    for i in 0..<mid {
        left.append(sampleList[i])
    }
    for i in mid..<sampleList.count {
        right.append(sampleList[i])
    }
    mergeSort(sampleList: &left)
    mergeSort(sampleList: &right)
    sampleList = merge(left: left, right: right)
}


insertionSort(sampleList: &list)
mergeSort(sampleList: &list)
