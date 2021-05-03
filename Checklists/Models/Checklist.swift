//
//  Checklist.swift
//  Checklists
//
//  Created by Mykhailo Kviatkovskyi on 30.04.2021.
//

import Foundation

//enum Icons: String {
//    case noIcon = "No Icon"
//    case appoinments = "Appoinments"
//    case birthdays = "Birthdays"
//    case chores = "Chores"
//    
//}

class Checklist: NSObject, Codable {
    var name = ""
    var iconName = "No Icon"
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
    }
    func countUnchecedItems() -> Int {
        return items.reduce(0) {cnt, item in cnt + (item.checked ? 0 : 1)}
    }
    
   
}
