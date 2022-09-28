//
//  PaddingAndSpacer.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 16/08/2022.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
//        Text("Hello, World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.yellow)
//            .padding(.leading, 50)
//            .background(Color.blue)
        
        VStack(alignment: .leading){
            Text("Empty!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            
            Text("This is description, This is description, This is description, This is description, This is description,This is description")
//                .multilineTextAlignment(.center)
        }
//        .background(Color.blue)
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
        )
        .shadow(color: Color.black.opacity(0.3),
                radius: 10.0,
                x: 0.0,
                y: 10.0)
        
        .padding(.horizontal, 10)
//        .background(Color.green)
        
    }
}

struct PaddingAndSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacer()
    }
}
