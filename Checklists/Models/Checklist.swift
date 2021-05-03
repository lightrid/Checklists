//
//  Checklist.swift
//  Checklists
//
//  Created by Mykhailo Kviatkovskyi on 30.04.2021.
//

import Foundation


class Checklist: NSObject, Codable {
    var name = ""
    var iconName = "No Icon"
    var items = [ChecklistItem]()
    
    init(name: String, iconName: String = "No Icon") {
        self.name = name
        self.iconName = iconName
    }
    func countUnchecedItems() -> Int {
        return items.reduce(0) {cnt, item in cnt + (item.checked ? 0 : 1)}
    }
    
   
}
