//
//  Conditions.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 28/08/2022.
//

import SwiftUI

struct Conditions: View {
    
    @State var showCircle: Bool = false
    
    var body: some View {
        VStack {
            
            Button {
                showCircle.toggle()
            } label: {
                if showCircle {
                    ProgressView()
                } else {
                    Text("no")
                }
//                Text("\(showCircle.description)")
            }
            
            Spacer()
                .frame(width: 140, height: 20)
                .background(showCircle ? Color.red : Color.orange)
        }
        
        
        
    }
}

struct Conditions_Previews: PreviewProvider {
    static var previews: some View {
        Conditions()
    }
}
