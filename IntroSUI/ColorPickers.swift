//
//  ColorPickers.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 28/09/2022.
//

import SwiftUI

struct ColorPickers: View {
    
    @State var backGroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            backGroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color", selection: $backGroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(Color.white)
                .font(.headline)
                .padding(50)
        }
        
    }
}

struct ColorPickers_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickers()
    }
}
