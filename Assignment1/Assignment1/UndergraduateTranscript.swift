//
//  UndergraduateTranscript.swift
//  Assignment1
//
//  Created by Minh To on 2021-09-21.
//

import Foundation

class UndergraduateTranscript: Transcript {
    private var gpa: Double
    
    override init(student: Student) {
        self.gpa = 0.0
        super.init(student: student)
    }
    
    override func show() {
        super.show()
        var average: Double = 0
        for course in courses {
            average += Double(course.grade)
        }
        average /= Double(courses.count)
        
        if (average >= 90) {
            self.gpa = 4.0
        } else if (average < 90 && average >= 80) {
            self.gpa = 3.0
        } else if (average < 80 && average >= 70) {
            self.gpa = 2.0
        } else if (average < 70 && average >= 60) {
            self.gpa = 1.0
        } else {
            self.gpa = 0.0
        }
        for course in self.courses {
            print("\(course.courseTitle)   \(course.grade)")
        }

        print("\nGPA: \(self.gpa)")
    }
}
