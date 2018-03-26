//
//  TodoItem.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation
import RealmSwift

class TodoItem: Object {
    
    // MARK: - Properties
    
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var title = ""
    var isDone = RealmOptional<Bool>()
    
    // MARK: - Realm helpers
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    
    // MARK: - Initializers
    
    convenience init(title: String) {
        self.init()
        
        self.title = title
        self.isDone.value = false
    }
    
    convenience init?(fromJSON json: JSONObject) {
        self.init()
        
        guard let id = json["id"] as? String, let title = json["title"] as? String, let done = json["done"] as? Bool else {
            return nil
        }
        
        self.id = id
        self.title = title
        self.isDone.value = done
    }
}
