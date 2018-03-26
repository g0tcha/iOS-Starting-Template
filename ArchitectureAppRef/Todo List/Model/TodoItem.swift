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
    @objc dynamic var title = ""
    var isDone = RealmOptional<Bool>()
    
    override static func primaryKey() -> String? {
        return UUID().uuidString
    }
    
    convenience init(title: String) {
        self.init()
        
        self.title = title
        self.isDone.value = false
    }
}
