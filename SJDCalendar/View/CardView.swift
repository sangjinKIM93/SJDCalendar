//
//  CardView.swift
//  SJDCalendar
//
//  Created by 김상진 on 2023/05/07.
//

import SwiftUI

struct CardView: View {
    
    let dailyGoal: DailyGoal
    
    var body: some View {
        HStack(alignment: .center) {
            Text(dailyGoal.date)
            Spacer()
                .frame(width: 20)
            VStack(alignment: .leading) {
                ForEach(dailyGoal.list, id: \.self) { item in
                    Text(item)
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                }
            }
            Spacer()
        }
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            CardView()
//        }
//    }
//}
