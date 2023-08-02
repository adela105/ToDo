//
//  ToDoItem.swift
//  ToDo
//
//  Created by scholar on 8/1/23.
//

import Foundation
    class ToDoItem: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

