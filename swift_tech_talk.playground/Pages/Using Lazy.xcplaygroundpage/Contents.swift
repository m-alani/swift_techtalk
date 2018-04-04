//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to `enum`s](@previous)
//: ### Performance optimizations with `lazy`

import Foundation

struct User {
    let firstName: String
    let lastName: String
    
    // This will be executed (and stored) only the first time you read this property. Every subsequent access will just return the stored value.
    lazy var fullName: String = {
        print("creating...")
        return "\(self.firstName) \(self.lastName)"
    }()
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var myUser = User(firstName: "Marwan", lastName: "Alani") // myUser.fullname is not calculated yet

_ = myUser.fullName // the closure for "fullname" gets executed now, and its returned value is stored and returned
