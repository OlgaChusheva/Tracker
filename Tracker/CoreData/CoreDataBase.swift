//
//  CoreDataBase.swift
//  Tracker
//
//  Created by Ольга Чушева on 05.03.2024.
//

import Foundation
import CoreData

enum DatabaseError: Error {
    case someError
}

final class CoreDataBase {
    
    private let modelName = "CoreData"
    var context: NSManagedObjectContext {
        persistentContainer.viewContext
    }

    private init() {
        _ = persistentContainer
    }
    
    static let shared = CoreDataBase()
    
    // MARK: - Core Data stack

    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: modelName)
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}
