//
//  TodoListViewController.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import UIKit

class TableTodoListViewController: UIViewController {
    
    private let todoTableView = UITableView()
    
    private let todos = TodoGenerator.generate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTableView.register(TodoCell.self, forCellReuseIdentifier: TodoCell.swiftIdentifier)
        todoTableView.dataSource = self
        view = todoTableView
    }
}

extension TableTodoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TodoCell.swiftIdentifier, for: indexPath) as? TodoCell else { return UITableViewCell() }
        let item = todos[indexPath.row]
        cell.configCell(item)
        return cell
    }
}
