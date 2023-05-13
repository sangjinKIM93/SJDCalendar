//
//  DetailView.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI
import RealmSwift

struct DetailView: View {
    @Binding var goalItem: DailyGoal
    @State var todoList: [String]
    
    init(goalItem: Binding<DailyGoal>) {
        _goalItem = goalItem
        _todoList = State(initialValue: goalItem.list.wrappedValue)
    }
    
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            List() {
                Section(footer: TodoListFooter(todoList: $todoList)) {
                    ForEach(todoList.indices, id: \.self) { index in
                        VStack {
                            TextField("목표를 적어주세요.", text: $todoList[index])
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
        .navigationBarItems(trailing: Button("저장") {
            self.updateData()
        })
        
    }
    
    func updateData() {
        let realm = try! Realm()
        
        try! realm.write {
            goalItem.list = todoList
            realm.add(goalItem, update: .modified)
        }
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
