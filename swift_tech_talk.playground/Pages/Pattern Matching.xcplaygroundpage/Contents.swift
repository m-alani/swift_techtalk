//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to Higher Order Functions](@previous)
//: ### Pattern Matching (`switch`/`case` everything!)

import Foundation
import UIKit

let myAge: Int = 19

switch myAge {
case let age where age >= 19:
    print("You can drink because you are \(age) years old!")
case 65:
    print("You can retire")
default:
    print("You're too old to party")
}

let username = "malani"
let password = "verySecurePassword"

switch (username, password) {
case ("malani", _):
    print("Welcome back, Marwan")
case (let user, let pass):
    print("Welcome back, \(user)")
    if !pass.isEmpty { print("Your password is valid!") }
}

//let myView = UIView()
//
//for case let button in myView.subviews where view as? UIButton {
//
//}
//: [Next to `enum`s](@next)
