//
//  TodoCell.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import SnapKit
import UIKit

class TodoCell: UITableViewCell, SwiftNameIdentifier {
    
    private let checkBox = CheckBox()
    private let content = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }
    
    private func initViews() {
        checkBox.do {
            contentView.addSubview($0)
            $0.snp.makeConstraints({ make in
                let width = 20
                make.width.equalTo(width)
                make.height.equalTo(width)
                make.leading.equalToSuperview().offset(10)
                make.centerY.equalToSuperview()
            })
        }
        content.do {
            contentView.addSubview($0)
            $0.snp.makeConstraints({ make in
                make.leading.equalTo(checkBox.snp.trailing).offset(10)
                make.trailing.equalToSuperview().inset(-10)
                make.centerY.equalToSuperview()
            })
        }
    }
}

extension TodoCell {
    func configCell(_ item: TodoItem) {
        checkBox.isSelected = item.isDone
        content.text = item.content
    }
}
