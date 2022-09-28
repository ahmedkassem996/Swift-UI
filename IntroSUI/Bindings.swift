//
//  Bindings.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 25/08/2022.
//

import SwiftUI

struct Bindings: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ButtonView(backgroundColor: $backgroundColor)
            
        }
        
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
        } label: {
            Text("jdfbhjs")
        }

    }
    
}

struct Bindings_Previews: PreviewProvider {
    static var previews: some View {
        Bindings()
    }
}
