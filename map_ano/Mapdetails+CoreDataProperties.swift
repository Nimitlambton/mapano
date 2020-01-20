//
//  Mapdetails+CoreDataProperties.swift
//  map_ano
//
//  Created by MacStudent on 2020-01-20.
//  Copyright © 2020 MacStudent. All rights reserved.
//
//

import Foundation
import CoreData


extension Mapdetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mapdetails> {
        return NSFetchRequest<Mapdetails>(entityName: "Mapdetails")
    }

    @NSManaged public var title: String?
    @NSManaged public var subtitle: String?
    @NSManaged public var long: Double
    @NSManaged public var lat: Double

}
