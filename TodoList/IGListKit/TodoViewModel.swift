//
//  TodoViewModel.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import Foundation

final class TodoItemModel: ListDiffable {
    
    let username: String
    let timestamp: String
    
    init(username: String, timestamp: String) {
        self.username = username
        self.timestamp = timestamp
    }
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return "user" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? UserViewModel else  { return false }
        return username == object.username
            && timestamp == object.timestamp
    }
    
}
