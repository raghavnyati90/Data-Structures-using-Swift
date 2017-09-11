//: Playground - noun: a place where people can play

import UIKit

//Generic Node Implementation
class Node<T>{
    var d: T
    var next: Node?
    init(d: T){
        self.d = d
    }
}

let a: Node = Node(d: 1)
let b: Node = Node(d: 2)
let c: Node = Node(d: 3)
a.next = b
b.next = c
print(a.next!.next!.d)