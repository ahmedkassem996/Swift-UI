//
//  ExtractFunctions.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 23/08/2022.
//

import SwiftUI

struct ExtractFunctions: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            
            // background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            // content
                 contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                btnPressed()
            } label: {
                Text("Press")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }

    }
    
    func btnPressed() {
        backgroundColor = .yellow
    }
    
}

struct ExtractFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctions()
    }
}
