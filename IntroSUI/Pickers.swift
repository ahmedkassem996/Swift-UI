//
//  Pickers.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 28/09/2022.
//

import SwiftUI

struct Pickers: View {
    
    @State var selection: String = "1"
    
    init () {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Age:")
                Text(selection)
            }
            
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
//                    ForEach(20..<100) { number in
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
//                        HStack {
//                            Text("\(number)").tag("\(number)")
//                            Image(systemName: "heart.fill")
//                        }
//                    }
                }
            )
            .pickerStyle(SegmentedPickerStyle())
//            .pickerStyle(MenuPickerStyle())
//            .background(Color.gray.opacity(0.3))
//            .background(Color.orange)
            
        }
        
    }
}

struct Pickers_Previews: PreviewProvider {
    static var previews: some View {
        Pickers()
    }
}
