//: ![Swift Logo](swiftlang_logo.png)
//: ## Writing better code with Swift
//: -----
//: [Back to `enum`s](@previous)
//: ### Performance optimizations with `lazy`

import Foundation

struct User {
    let firstName: String
    let lastName: String
    lazy var fullName: String = {
        print("creating...")
        return "\(self.firstName) \(self.lastName)"
    }()
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var myUser = User(firstName: "Marwan", lastName: "Alani")

_ = myUser.fullName
