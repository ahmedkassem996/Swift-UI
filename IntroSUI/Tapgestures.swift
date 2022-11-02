//
//  Tapgestures.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 30/10/2022.
//

import SwiftUI

struct Tapgestures: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
            .foregroundColor(isSelected ? Color.green : Color.red)
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.black)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
        
    }
}

struct Tapgestures_Previews: PreviewProvider {
    static var previews: some View {
        Tapgestures()
    }
}
