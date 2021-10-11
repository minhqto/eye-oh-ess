//
//  main.swift
//  Week1
//
//  Created by Minh To on 2021-09-17.
//

import Foundation

print("Hello, World!")
print("Hello my name is Minh")

//var myNum: Int = 1
//var cars = ["Toyota", "BMW", "Honda"]
//var foods = [String]()
//var marvelCharacters: [String] = []
//
//marvelCharacters.append("Shang Chi")
//
//cars.insert("Mercedes", at: 1)
//
//print(cars.sorted())
//
//var dogs: [Dictionary<String, Any>]  = []
//
//var dog1: [String: Any] = [
//    "name": "Klaus",
//    "age": 1
//]
//
//var dog2: [String: Any] = [
//    "name": "Coco",
//    "age": 3
//]
//
//dogs.append(dog1)     
//dogs.append(dog2)
//
//
//var currencies: [String:String] = [
//    "CAD": "Canadian Dollar",
//    "USD": "Dollar",
//    "CNY": "Chinese Yuan"
//]
//
//var keys = currencies.keys
//
//for x in 0...14{
//    print(Int.random(in: 80...120))
//}

func doSomething(grades: [Int]) -> Bool {
    var gradeSum: Int = 0
    for grade in grades {
        gradeSum += grade
    }
    print(gradeSum/grades.count)
    return true
    
}

doSomething(grades: [80,20,10])
