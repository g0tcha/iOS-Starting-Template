//
//  TodoItemDatabase.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation
import RealmSwift

final class TodoItemDatabase {
    
    class func save(todoItem: TodoItem) {
        do {
            let realm = try Realm()
            try realm.write {
                guard let _ = realm.object(ofType: TodoItem.self, forPrimaryKey: todoItem.id) else {
                    realm.add(todoItem)
                    return
                }
            }
        } catch {
            print("An error occured when trying to save todo item.")
        }
    }
    
}
