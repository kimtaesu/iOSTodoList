//
//  RxTableTodoListViewController.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import RxDataSources
import RxSwift
import UIKit

class RxTableTodoListViewController: UIViewController {

    private let todoTableView = UITableView()

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = todoTableView
        todoTableView.register(TodoCell.self, forCellReuseIdentifier: TodoCell.swiftIdentifier)

        let dataSource = RxTableViewSectionedAnimatedDataSource<TodoSectionItem>(
            configureCell: { ds, tv, ip, item in
                guard let cell = tv.dequeueReusableCell(withIdentifier: TodoCell.swiftIdentifier, for: ip) as? TodoCell else { return UITableViewCell() }
                cell.configCell(item)
                return cell
            },
            titleForHeaderInSection: { ds, index in
                return ds.sectionModels[index].header
            }
        )

        Observable.just(TodoGenerator.generate())
            .map { [TodoSectionItem(header: "Todos", items: $0)] }
            .bind(to: todoTableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }
}
