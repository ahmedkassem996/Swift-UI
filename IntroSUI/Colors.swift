//
//  Colors.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 08/08/2022.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.orange
//                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("MainColor")
                
            )
            .frame(width: 300, height: 150)
//            .shadow(radius: 20)
            .shadow(color: Color.red.opacity(0.3), radius: 10, x: -12, y: -12)
            
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
            
            
            
            
    }
}
