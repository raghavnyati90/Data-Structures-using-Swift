//: Playground - noun: a place where people can play

import UIKit

//Example:
// 5 + 25 * 6

//Represent the equation above in a tree
//          +
//        /   \
//      '*'    5
//      / \
//     25  6


//Node that represents a value or operator in Abstract Syntax Tree
class Node{
    var operation: String?
    var value: Float?
    var leftChild: Node?
    var rightChild: Node?
    
    init(operation: String?, value: Float?,  leftChild: Node?, rightChild: Node?){
        self.operation = operation
        self.value = value
        self.leftChild = leftChild
        self.rightChild  = rightChild
    }
}

let sixNode = Node(operation: nil, value: 6, leftChild: nil, rightChild: nil)
let fiveNode = Node(operation: nil, value: 5, leftChild: nil, rightChild: nil)
let twentyFiveNode = Node(operation: nil, value: 25, leftChild: nil, rightChild: nil)
let multiplyNode = Node(operation: "*", value: nil, leftChild: twentyFiveNode, rightChild: sixNode)
let plusNode = Node(operation: "+", value: nil, leftChild: multiplyNode, rightChild: fiveNode)

//Implement this algorithm, the baove tree evaluation to 155
func evaluate(node: Node) -> Float{
    if(node.value != nil){
        return node.value!
    }
    
    if node.operation == "+"{
        return evaluate(node: node.leftChild!) + node.rightChild!.value!
    }else if node.operation == "*"{
        return evaluate(node: node.leftChild!) * node.rightChild!.value!
    }else if node.operation == "-"{
        return evaluate(node: node.leftChild!) - node.rightChild!.value!
    }else if node.operation == "/"{
        return evaluate(node: node.leftChild!) / node.rightChild!.value!
    }
    
    return 0
}

evaluate(node: plusNode)