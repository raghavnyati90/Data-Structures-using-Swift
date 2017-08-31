//: Playground - noun: a place where people can play

import UIKit

//hex string
var str1 = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"

//function to convert hex string to normal string
func dataWithHexString(hex: String) -> Data {
    var hex = hex
    var data = Data()
    while(hex.characters.count > 0) {
        let c: String = hex.substring(to: hex.index(hex.startIndex, offsetBy: 2))
        hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 2))
        var ch: UInt32 = 0
        Scanner(string: c).scanHexInt32(&ch)
        var char = UInt8(ch)
        data.append(&char, count: 1)
    }
    return data
}

let data = dataWithHexString(hex: "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d") // <
let string = String(data: data, encoding: .utf8)

//converts normal to string base 64
extension String{
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}

print(Data(string!.utf8).base64EncodedString())

//Always operate on raw bytes, never on encoded strings. Only use hex and base64 for pretty-printing.

