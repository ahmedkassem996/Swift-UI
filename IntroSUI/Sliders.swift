//
//  Sliders.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 02/10/2022.
//

import SwiftUI

struct Sliders: View {
    
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    
    var body: some View {

        VStack {
            Text("Rating: ")
//            Text("\(sliderValue)")
            Text(
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
            
//            Slider(value: $sliderValue, in: 1...100, step: 1.0)
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: {_ in
                color = .green
            },
                   minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("5"),
                   label: {
                Text("Title")
            })
                .accentColor(.red)
        }

    }
}

struct Sliders_Previews: PreviewProvider {
    static var previews: some View {
        Sliders()
    }
}
