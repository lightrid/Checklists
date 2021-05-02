//
//  Checklist.swift
//  Checklists
//
//  Created by Mykhailo Kviatkovskyi on 30.04.2021.
//

import Foundation

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
    }
}
