//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Mykhailo Kviatkovskyi on 26.04.2021.
//

import Foundation

class ChecklistItem: Equatable {
    static func == (lhs: ChecklistItem, rhs: ChecklistItem) -> Bool {
        lhs.text == rhs.text
    }
    
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked.toggle()
    }
}
