//
//  User.swift
//  LoginApp
//
//  Created by Денис Ільницький on 07/08/2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "user",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Denys",
            surname: "Ilnytskyi",
            image: "testImage"
        )
    }
}
