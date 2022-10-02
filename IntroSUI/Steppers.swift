//
//  Steppers.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 29/09/2022.
//

import SwiftUI

struct Steppers: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncreament: CGFloat = 0
    @State var heightIncreament: CGFloat = 0
    
    var body: some View {
        
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.orange)
                .frame(width: 100 + widthIncreament, height: 100 + heightIncreament)
            
            Stepper("Width") {
                withAnimation(.easeInOut) {
                    widthIncreament += 10
                }
            } onDecrement: {
                withAnimation(.easeInOut) {
                    widthIncreament -= 10
                }
            }
            
            Stepper("Height") {
                withAnimation(.easeInOut) {
                    heightIncreament += 10
                }
            } onDecrement: {
                withAnimation(.easeInOut) {
                    heightIncreament -= 10
                }
            }

            
        }
        
    }
}

struct Steppers_Previews: PreviewProvider {
    static var previews: some View {
        Steppers()
    }
}
