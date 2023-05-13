//
//  CalendarViewModel.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import Foundation
import RealmSwift

class CalendarViewModel: ObservableObject {
    
    @Published var goalList: [DailyGoal] = []
    
    let dummyList = [
        DailyGoal(date: "5/1", list: [""]),
        DailyGoal(date: "5/2", list: [""]),
        DailyGoal(date: "5/3", list: [""]),
        DailyGoal(date: "5/4", list: [""]),
        DailyGoal(date: "5/5", list: [""]),
        DailyGoal(date: "5/6", list: [""]),
        DailyGoal(date: "5/7", list: [""]),
    ]
    
    let realm = try! Realm()
    
    init() {
        var currentData = readData()
        
        if currentData.isEmpty {
            try! realm.write {
                dummyList.forEach { item in
                    realm.add(item)
                }
            }
        }
    }
    
    func refreshData() {
        self.goalList = readData()
    }
    
    private func readData() -> [DailyGoal] {
        let retrieveData = realm.objects(DailyGoal.self)
        
        return retrieveData.map {
            DailyGoal(id: $0.id, date: $0.date, list: $0.listData.map{$0})
        }
    }
    
    private func deleteAll() {
        try! realm.write {
            realm.deleteAll()
        }
    }
}
