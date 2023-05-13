//
//  ContentView.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI

struct CalendarView: View {
    
    @ObservedObject var viewModel: CalendarViewModel
    @State var goalList: [DailyGoal] = []
    
    var body: some View {
        List {
            ForEach(goalList, id: \.id) { item in
                NavigationLink {
                    DetailView(goalItem: binding(for: item))
                } label: {
                    CardView(dailyGoal: item)
                }
            }
        }
        .navigationTitle("Week Calendar")
        .onReceive(viewModel.$goalList) { list in
            goalList = list
        }
        .onAppear {
            viewModel.refreshData()
        }
    }
    
    // ForEach로 풀어진 item은 binding이 되어 있지 않다.
    private func binding(for goalItem: DailyGoal) -> Binding<DailyGoal> {
        guard let goalIndex = goalList.firstIndex(where: {$0.id == goalItem.id}) else {
            fatalError("Can't find scrum in array")
        }
        return $goalList[goalIndex]
    }
}

//struct CalendarView_Previews: PreviewProvider {
//    static var previews: some View {
////        CalendarView()
//    }
//}
