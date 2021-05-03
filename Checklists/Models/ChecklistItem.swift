//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Mykhailo Kviatkovskyi on 26.04.2021.
//

import Foundation

class ChecklistItem: Equatable, Encodable, Decodable {
    static func == (lhs: ChecklistItem, rhs: ChecklistItem) -> Bool {
        lhs.text == rhs.text
    }
    
    var text: String
    var checked: Bool
    
    init() {
        self.text = ""
        self.checked = false
    }
    
    func toggleChecked() {
        checked.toggle()
    }
}
