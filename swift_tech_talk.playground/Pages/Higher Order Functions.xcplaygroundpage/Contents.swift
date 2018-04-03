//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to Intro](@previous)
//: ### Higher Order Fucntions

import Foundation

let arrayOfInts = [4, 20, -5, 6, 1]
let arrayOfOptionalInts = [7, nil, 3, 14, nil]

// arrayOfInts.forEach({ print($0) })

arrayOfInts.filter({ $0 > 0 })

let sum = arrayOfInts.reduce(0, {$0 + $1})

// print(sum)

print(arrayOfOptionalInts.filter({$0 != nil}))

print(arrayOfOptionalInts.compactMap({$0}))

//: [Next to Pattern Matching](@next)
