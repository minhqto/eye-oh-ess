//
//  main.swift
//  Assignment1
//
//  Created by Minh To on 2021-09-21.
//

import Foundation

var undergradStudent = Student(studentId: "1", fName: "Minh", lName: "To", type: Student.StudentType.Undergraduate)
var postgradStudent = Student(studentId: "2", fName: "Jessica", type: Student.StudentType.Postgrad)

var undergradCourses = [
    Course(courseTitle: "MAP524", grade: 80),
    Course(courseTitle: "PMC115", grade: 90),
    Course(courseTitle: "SPO600", grade: 60)
]

var postgradCourses = [
    Course(courseTitle: "PRJ666", grade: 85),
    Course(courseTitle: "JAC444", grade: 65)
]

var undergradTranscript = UndergraduateTranscript(student: undergradStudent)
var postgradTranscript = PostGraduateTranscript(student: postgradStudent)

for course in undergradCourses {
    undergradTranscript.addCourse(course: course)
}

for course in postgradCourses {
    postgradTranscript.addCourse(course: course)
}

undergradTranscript.show()
print()
postgradTranscript.show()

