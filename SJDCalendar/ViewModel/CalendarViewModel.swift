//
//  CalendarViewModel.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import Foundation

class CalendarViewModel: ObservableObject {
    
    @Published var goalList = [
        DailyGoal(date: "5/1", list: [""]),
        DailyGoal(date: "5/2", list: [""]),
        DailyGoal(date: "5/3", list: [""]),
        DailyGoal(date: "5/4", list: [""]),
        DailyGoal(date: "5/5", list: [""]),
        DailyGoal(date: "5/6", list: [""]),
        DailyGoal(date: "5/7", list: [""]),
    ]
}
