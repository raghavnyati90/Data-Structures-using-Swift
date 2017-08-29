//: Playground - noun: a place where people can play

import UIKit

class Node<T>{
    var value: T
    var next: Node?
    init(value: T){
        self.value = value
    }
}

class Stack<T>{
    
    var top: Node<T>?
    
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let current = top
        top = top?.next
        return current?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}

struct User{
    let name: String
    let username: String
}

var userStack = Stack<User>()
userStack.push(User(name: "raghav", username: "@raghav"))
userStack.push(User(name: "nyati", username: "@nyati"))

userStack.pop()
userStack.peek()
userStack.pop()

let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

stack.peek()

stack.pop()
stack.pop()
