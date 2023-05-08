//
//  SJDCalendarApp.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI

@main
struct SJDCalendarApp: App {

    var body: some Scene {
        WindowGroup {
            NavigationView {
                CalendarView(viewModel: CalendarViewModel())
            }
        }
    }
}
