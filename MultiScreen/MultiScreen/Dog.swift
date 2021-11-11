//
//  Dog.swift
//  MultiScreen
//
//  Created by Minh To on 2021-11-10.
//

import Foundation

class Dog {
    var name: String?
    var breed: String?
    
    init(_name: String, _breed: String){
        self.name = _name
        self.breed = _breed
    }
    
    public func bark() {
        print("Bork bork")
    }
    
}
