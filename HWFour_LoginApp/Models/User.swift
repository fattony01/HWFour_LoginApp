//
//  User.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 15.06.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let company: String
    let position: String
    let description: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
