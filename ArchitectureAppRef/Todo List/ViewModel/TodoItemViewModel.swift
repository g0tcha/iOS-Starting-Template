//
//  TodoItemViewModel.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation

struct TodoItemViewModel {
    
    var todoItem: TodoItem {
        didSet {
            print("did set")
        }
    }
    
    var title: String {
        return todoItem.title
    }
    
    var isDone: Bool {
        return todoItem.isDone.value ?? false
    }
    
}

extension TodoItemViewModel: TodoItemRepresentable { }
