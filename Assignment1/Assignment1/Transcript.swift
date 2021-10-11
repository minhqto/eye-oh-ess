//
//  Transcript.swift
//  Assignment1
//
//  Created by Minh To on 2021-09-21.
//

import Foundation

class Transcript: isPrintable {

    
    private var student: Student
    internal var courses: [Course]
    
    init(student: Student) {
        self.student = student
        self.courses = []
    }
    
    public func addCourse(course: Course){
        self.courses.append(course)
    }
    
    func show() {
        self.student.show()
        print()
    }
    
    
}
