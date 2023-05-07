//
//  ContentView.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI

struct CalendarView: View {
    
//    @Binding var dailyGoal: DailyGoal
    let goalList = [
        DailyGoal(date: "7월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "8월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "9월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "10월", list: ["스위프트유아이 공부", "코테 공부"]),
        DailyGoal(date: "11월", list: ["스위프트유아이 공부", "코테 공부"]),
    ]
    
    var body: some View {
        List {
            ForEach(goalList, id: \.id) { item in
                NavigationLink {
                    DetailView()
                } label: {
                    CardView(dailyGoal: item)
                }
            }
        }
        .navigationTitle("Week Calendar")
    }
}

//struct CalendarView_Previews: PreviewProvider {
//    static var previews: some View {
////        CalendarView()
//    }
//}
