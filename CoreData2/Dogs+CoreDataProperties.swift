//
//  Dogs+CoreDataProperties.swift
//  CoreData2
//
//  Created by Minh To on 2021-12-07.
//
//

import Foundation
import CoreData


extension Dogs {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dogs> {
        return NSFetchRequest<Dogs>(entityName: "Dogs")
    }

    @NSManaged public var name: String?
    @NSManaged public var breed: String?

}

extension Dogs : Identifiable {

}
