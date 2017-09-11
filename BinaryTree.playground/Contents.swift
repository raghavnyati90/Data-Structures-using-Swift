//: Playground - noun: a place where people can play

import UIKit

//1. 
//          21
//         /  \
//        15    34
//       /     / \
//      11     31  50


//2. Creaating a Binary Tree using Node
class Node{
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?){
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

let c1 = Node(value: 11, leftChild: nil, rightChild: nil)
let c2 = Node(value: 31, leftChild: nil, rightChild: nil)
let c3 = Node(value: 50, leftChild: nil, rightChild: nil)
let b1 = Node(value: 15, leftChild: c1, rightChild: nil)
let b2 = Node(value: 34, leftChild: c2, rightChild: c3)
let a1 = Node(value: 21, leftChild: b1, rightChild: b2)


//3. Search an element through this tree for particuar seachValue
func search(node: Node?, searchValue: Int) -> Bool{
    if node == nil{
        return false
    }
    if node?.value == searchValue {
        return true
    }else if searchValue < node!.value{
       return search(node: node?.leftChild, searchValue: searchValue)
    }else{
        return search(node: node?.rightChild, searchValue: searchValue)
    }
}

search(node: a1, searchValue: 50)

