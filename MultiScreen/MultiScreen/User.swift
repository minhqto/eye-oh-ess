//
//  User.swift
//  MultiScreen
//
//  Created by Minh To on 2021-11-10.
//

import Foundation

class User {
    var username: String?
    var email: String?
    var age: Int?
    var dog: Dog?
    
    init(_username: String, _email: String, _age: Int, _dog: Dog) {
        self.username = _username
        self.email = _email
        self.age = _age
        self.dog = _dog
    }

    func whereIsMyDog() -> Dog? {
        return self.dog ?? nil
    }
}
