//
//  Todo.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import Foundation

struct DailyGoal: Identifiable {
    var id: UUID
    var date: String
    var list: [String]
    
    init(id: UUID = UUID(), date: String, list: [String]) {
        self.id = id
        self.date = date
        self.list = list
    }
}
