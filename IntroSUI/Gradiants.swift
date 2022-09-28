//
//  Gradiants.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 09/08/2022.
//

import SwiftUI

struct Gradiants: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.white, Color.orange, Color.green]),
//                startPoint: .bottomLeading,
//                endPoint: .topTrailing)
                
//                RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 500)
                
                AngularGradient(gradient: Gradient(colors: [.red, .green]), center: .center, angle: .degrees(25 + 50))
                
            )
        
            .frame(width: 300, height: 150)
        
    }
}

struct Gradiants_Previews: PreviewProvider {
    static var previews: some View {
        Gradiants()
    }
}
