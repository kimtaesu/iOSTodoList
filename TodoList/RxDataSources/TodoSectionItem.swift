//
//  TodoSectionItem.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import Differentiator

extension TodoItem: IdentifiableType, Equatable {
    var identity: String {
        return self.content
    }

    static func == (lhs: TodoItem, rhs: TodoItem) -> Bool {
        return lhs.content == rhs.content
    }
}

struct TodoSectionItem {
    var header: String
    var items: [Item]
}

extension TodoSectionItem: AnimatableSectionModelType {
    typealias Item = TodoItem

    var identity: String {
        return header
    }

    init(original: TodoSectionItem, items: [Item]) {
        self = original
        self.items = items
    }
}
