//
//  DatePickers.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 29/09/2022.
//

import SwiftUI

struct DatePickers: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
    
        VStack {
            
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selectedDate ))
                .font(.title)
            
    //        DatePicker("Select a date", selection: $selectedDate)
    //        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate)
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
    //                GraphicalDatePickerStyle()
    //                WheelDatePickerStyle()
                )
        }
        
    }
}

struct DatePickers_Previews: PreviewProvider {
    static var previews: some View {
        DatePickers()
    }
}
