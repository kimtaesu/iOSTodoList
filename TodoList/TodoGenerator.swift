//
//  TodoGenerator.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import Foundation

class TodoGenerator {
    
    static func generate() -> [TodoItem] {
        return [
            TodoItem(content: "TODO List", isDone: true),
            TodoItem(content: "미세먼지 앱", isDone: false),
            TodoItem(content: "밥먹기", isDone: true),
            TodoItem(content: "잠자기", isDone: false)
        ]
    }
}
