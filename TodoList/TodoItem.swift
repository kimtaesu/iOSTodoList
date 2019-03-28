//
//  TodoItem.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import Foundation

struct TodoItem {
    let content: String
    let isDone: Bool
    let createdAt: Date
    let updatedAt: Date

    public init(content: String, isDone: Bool) {
        self.content = content
        self.isDone = isDone
        self.createdAt = Date()
        self.updatedAt = Date()
    }
}
