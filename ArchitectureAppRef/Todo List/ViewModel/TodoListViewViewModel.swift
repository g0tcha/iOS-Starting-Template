//
//  TodoListViewViewModel.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation

struct TodoListViewViewModel {
    
    // MARK: - Properties
    
    var todoItems = [TodoItem]()
    
    // MARK: - Initializers
    
    init(todoItems: [TodoItem]) {
        self.todoItems = todoItems
    }
    
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfRows: Int {
        return todoItems.count
    }
    
    func title(forIndex index: Int) -> String {
        let item = todoItems[index]
        return item.title
    }
    
    func isDone(forIndex index: Int) -> Bool {
        let item = todoItems[index]
        return item.isDone.value ?? false
    }
    
    
    
    
}
