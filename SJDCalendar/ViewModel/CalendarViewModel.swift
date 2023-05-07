//
//  CalendarViewModel.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import Foundation

class CalendarViewModel: ObservableObject {
    
    @Published var goalList = [
        DailyGoal(date: "7월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "8월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "9월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "10월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "11월", list: ["스위프트유아이 공부", "코테 공부"]),
    ]
}
