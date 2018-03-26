//
//  FirstViewController.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import UIKit

class TodoListTableViewController: UITableViewController {

    // MARK: - Properties
    
    var viewModel: TodoListViewViewModel?
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TodoItemStore.shared.getTodoItems { [weak self] items in
            self?.viewModel = TodoListViewViewModel(todoItems: items)
            self?.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

// MARK: - UITableViewControllerDatasource

extension TodoListTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel?.numberOfSections ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Configuration.Cells.TodoListCell.rawValue, for: indexPath) as! TodoListTableViewCell
        
        if let todoItemRepresentable = viewModel?.viewModel(for: indexPath.row) {
            cell.configure(withViewModel: todoItemRepresentable)
        }
        
        return cell
    }
    
}

// MARK: - UITableViewControllerDelegate

extension TodoListTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewModel = viewModel?.viewModel(for: indexPath.row) {
            viewModel.todoItem.isDone.value = !viewModel.todoItem.isDone.value!
            tableView.reloadData()
        }
    }
    
}

