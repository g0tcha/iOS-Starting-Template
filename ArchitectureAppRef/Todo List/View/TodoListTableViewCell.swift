//
//  TodoListTableViewCell.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {
    
    // MARK: - Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configure(withViewModel viewModel: TodoItemRepresentable) {
        self.textLabel?.text = viewModel.title
        self.accessoryType = viewModel.isDone ? .checkmark : .none
    }
    
}
