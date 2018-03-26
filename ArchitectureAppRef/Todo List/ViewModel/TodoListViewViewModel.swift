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
    
    func viewModel(for index: Int) -> TodoItemViewModel {
        return TodoItemViewModel(todoItem: todoItems[index])
    }
    
    
    
    
}
