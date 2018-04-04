//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to Intro](@previous)
//: ### Higher Order Fucntions

import Foundation

let arrayOfInts = [4, 20, -5, 6, 1]
let arrayOfOptionalInts = [7, nil, 3, 14, nil]

// All these higher order functions work on Collections (Arrays, Dictionaries, etc.)

// forEach: passes each element in the Collection to the function you pass as an argument. Doesn't return anything
arrayOfInts.forEach({ print($0) })

// filter: retuns a a new Collection containing all the elements that runs through your function and evaluates to "true"
arrayOfInts.filter({ $0 > 0 }) // $0 is shorthand for the first argument passed into a closure

// reduce: takes an initial value and a closure.
let sum = arrayOfInts.reduce(0, {$0 + $1})
print("\n", sum)

// map: returns a new Collection containing the result of mapping the original Collection through the closure you passed. Your closure takes 1 element at a time and returns the associated value after mapping with your logic. Note that the returned element (and the new Collection) does NOT have to be of the same type as the original.
let arrayOfDoubledInts = arrayOfInts.map({Double($0 * 2)})
print("\n", arrayOfDoubledInts)

// compactMap: returns a Collection of all non-optional elements (used to discard nil values)
print("\n", arrayOfOptionalInts.compactMap({$0}))

//: [Next to Pattern Matching](@next)
