//
//  PostGraduateTranscript.swift
//  Assignment1
//
//  Created by Minh To on 2021-09-21.
//

import Foundation

class PostGraduateTranscript : Transcript {
    override init(student: Student) {
        super.init(student: student)
    }
    
    override func show() {
        super.show()
        for course in self.courses {
            let passFail = course.grade >= 50 ? "PASS" : "FAIL"
            print("\(course.courseTitle) \(passFail)")
        }

    }
}
