//
//  TodoItemCoordinator.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation

final class TodoItemStore {
    
    typealias TodoItemListCompletion = (_ todoItems: [TodoItem]) -> Void
    
    private init() {}
    
    static let shared = TodoItemStore()
    
    func getTodoItems(completion:@escaping TodoItemListCompletion) {
        TodoListService.getItems { (items, error) in
            guard let items = items else {
                if let err = error {
                    completion([TodoItem]())
                    print(err)
                    
                }
                
                return
            }
            
            // TODO Load stored todo items
            completion(items)
        }
    }
    
}
