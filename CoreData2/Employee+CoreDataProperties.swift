//
//  Employee+CoreDataProperties.swift
//  CoreData2
//
//  Created by Minh To on 2021-12-07.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?
    @NSManaged public var dateHired: String?

}

extension Employee : Identifiable {

}
