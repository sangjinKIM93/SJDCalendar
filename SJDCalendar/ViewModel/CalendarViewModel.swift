//
//  CalendarViewModel.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import Foundation

class CalendarViewModel: ObservableObject {
    
    @Published var goalList = [
        DailyGoal(date: "5/1", list: ["스위프트유아이 공부", "코테 공부","스위프트유아이 공부", "코테 공부","스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "5/2", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "5/3", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "5/4", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "5/5", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "5/6", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "5/7", list: ["스위프트유아이 공부", "코테 공부"]),
    ]
}
