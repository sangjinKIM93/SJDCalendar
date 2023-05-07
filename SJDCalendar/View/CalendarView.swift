//
//  ContentView.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI

struct CalendarView: View {
    
    @EnvironmentObject var viewModel: CalendarViewModel
    @State var goalList: [DailyGoal] = []
    
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
        .onReceive(viewModel.$goalList) { list in
            goalList = list
        }
    }
}

//struct CalendarView_Previews: PreviewProvider {
//    static var previews: some View {
////        CalendarView()
//    }
//}
