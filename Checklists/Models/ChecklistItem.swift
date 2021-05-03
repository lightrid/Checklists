//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Mykhailo Kviatkovskyi on 26.04.2021.
//

import Foundation
import UserNotifications

class ChecklistItem: Equatable, Codable {
    static func == (lhs: ChecklistItem, rhs: ChecklistItem) -> Bool {
        lhs.text == rhs.text
    }
    
    var text = ""
    var checked = false
    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1
    
     init() {
        itemID = DataModel.nextChecklistItemID()
    }
    
    
    func toggleChecked() {
        checked.toggle()
    }
    
    func scheduleNotification() {
        if shouldRemind && dueDate > Date() {
           let content = UNMutableNotificationContent()
            content.title = "Reminder:"
            content.body = text
            content.sound = .default
            
            let calendar = Calendar(identifier: .gregorian)
            let components = calendar.dateComponents([.year, .month, .day, .minute], from: dueDate)

            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
            
            let request = UNNotificationRequest(identifier: String(itemID), content: content, trigger: trigger)
            
            let center = UNUserNotificationCenter.current()
            center.add(request)
            
            print("Scheduled: \(request) for itemID: \(itemID)")
        }
    }
}
