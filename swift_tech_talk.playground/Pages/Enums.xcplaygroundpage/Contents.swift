//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to Pattern Matching](@previous)
//: ### A bit more about `enum`s

import Foundation

// enums can have associated types
enum Weather {
    case sunny
    case cloudy(coverage: Int)
}

let myWeather = Weather.cloudy(coverage: 86)

// associated types of enums can be used to match a pattern in switch cases
switch myWeather {
case .cloudy(let coverage) where coverage > 10 :
    print("It's a bit cloudy!")
default:
    print("I don't know what's the weather")
}
//: [Next to Being `lazy`](@next)

