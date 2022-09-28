//
//  Transitions.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 04/09/2022.
//

import SwiftUI

struct Transitions: View {
    
    @State var showView: Bool = false
    
    var body: some View {
                
        ZStack(alignment: .bottom) {
            VStack {
                Button("Press"){
                    showView.toggle()
                }
                
                Spacer()
                
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                     .frame(height: UIScreen.main.bounds.height * 0.5)
     //                .opacity(showView ? 1.0 : 0.0)
                     .transition(.move(edge: .bottom))
                     .animation(.easeInOut)
            }
           
                
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
        
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}
