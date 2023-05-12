//
//  DetailView.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI

struct DetailView: View {
    @Binding var goalItem: DailyGoal
    
    @State var todoList: [String] = [""]
    
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            List() {
                Section(footer: TodoListFooter(todoList: $goalItem.list)) {
                    ForEach(goalItem.list.indices, id: \.self) { index in
                        VStack {
                            TextField("목표를 적어주세요.", text: $goalItem.list[index])
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray.opacity(0.5))
                        }
                        .listRowSeparator(.hidden)
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
        .listStyle(.insetGrouped)
        .navigationTitle("오늘의 목표")
        
    }
}

struct TodoListFooter: View {
    @Binding var todoList: [String]
    var body: some View {
        Button {
            todoList.append("")
        } label: {
            HStack {
                Image(systemName: "plus")
                Text("목표 추가")
            }
        }
        .frame(height: 50)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
