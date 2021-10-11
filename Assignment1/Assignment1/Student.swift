//
//  Student.swift
//  Assignment1
//
//  Created by Minh To on 2021-09-21.
//

import Foundation

class Student: isPrintable {
    private var id: String
    private var firstName: String
    private var lastName: String
    private var fullName: String
    private var type: Student.StudentType
    
    init() {
        self.id = ""
        self.firstName = ""
        self.lastName = ""
        self.fullName = ""
        self.type = .Empty
    }
    
    init(studentId: String, fName: String, lName: String = "", type: Student.StudentType) {
        self.id = studentId
        self.firstName = fName
        self.lastName = lName
        self.type = type
        fullName = lName == "" ? fName: fName + " " + lName
    }
    
    public func show() {
        print("Student Name: \(self.firstName) \(self.lastName)")
        print("Student ID: \(self.id)")
        
        switch self.type {
        case .Undergraduate:
            print("Student Type: Undergraduate Studies")
        case .Postgrad:
            print("Student Type: Postgraduate Studies")
        case .Empty:
            print("Student Type: No student type given")
        }
    }
    
    enum StudentType: String {
        case Undergraduate
        case Postgrad
        case Empty
    }
}
