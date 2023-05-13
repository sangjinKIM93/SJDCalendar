//
//  Todo.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import Foundation
import RealmSwift

class DailyGoal: Object, Identifiable {
    @Persisted(primaryKey: true) var id: UUID
    @Persisted var date: String
    @Persisted var listData: List<String>
    var list: [String] {
        get {
            return listData.map{$0}
        }
        set {
            listData.removeAll()
            listData.append(objectsIn: newValue)
        }
    }
    
    convenience init(id: UUID = UUID(), date: String, list: [String]) {
        self.init()
        self.id = id
        self.date = date
        self.list = list
    }
}
