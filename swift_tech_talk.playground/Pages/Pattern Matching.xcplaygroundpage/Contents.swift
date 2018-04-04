//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to Higher Order Functions](@previous)
//: ### Pattern Matching (`switch`/`case` on steroids!)

import Foundation
import UIKit

let myAge: Int = 19

// Standard use of switch/case
switch myAge {
case let age where age >= 19: // Using "where" clause to match a pattern.
    print("You can drink because you are \(age) years old!")
case 65...75: // Using a range
    print("You can retire")
default:
    print("You're too old to party")
}

let username = "malani"
let password: String? = "verySecurePassword"

// Using "switch" with Tuples
switch (username, password) {
case ("malani", _): // Ignoring part of the Tuple
    print("Welcome back, Marwan")
case (let user, let pass?): // This case matches only of password is not nil
    print("Welcome back, \(user)")
    if !pass.isEmpty { print("Your password is valid!") }
default:
    print("Unauthorized user!")
}

let numbers = [5, 9, 2, 7, 8, 12]

// case/where can be used without "switch"
var evenNumbers = [Int]() // Initialize an empty array of Ints
for number in numbers where number % 2 == 0 {
    evenNumbers.append(number)
}
print("\n", evenNumbers)


let myView = UIView()

for case let button in myView.subviews where button is UIButton { } // Note that this only checks and loops using the subviews that are buttons; this does NOT cast "button" to UIButton automatically (button is a UIView inside the loop's scope

for case let button as UIButton in myView.subviews { // this, on the other hand, casts the UIView into a UIButton and only iterate over that item if the casting is successful (button is a UIButton inside the loop's scope)
    button.titleLabel?.text = "Swift FTW"
}

//: [Next to `enum`s](@next)
