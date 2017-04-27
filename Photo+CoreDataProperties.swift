//
//  Photo+CoreDataProperties.swift
//  Photorama
//
//  Created by Alexander Nardozzi on 4/27/17.
//  Copyright © 2017 CSC2310. All rights reserved.
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var dateTaken: NSDate?
    @NSManaged public var favorite: Bool
    @NSManaged public var photoID: String?
    @NSManaged public var remoteURL: NSObject?
    @NSManaged public var title: String?
    @NSManaged public var viewCount: Int16
    @NSManaged public var tags: NSSet?

}

// MARK: Generated accessors for tags
extension Photo {

    @objc(addTagsObject:)
    @NSManaged public func addToTags(_ value: Tag)

    @objc(removeTagsObject:)
    @NSManaged public func removeFromTags(_ value: Tag)

    @objc(addTags:)
    @NSManaged public func addToTags(_ values: NSSet)

    @objc(removeTags:)
    @NSManaged public func removeFromTags(_ values: NSSet)

}
