//
//  Toggles.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 28/09/2022.
//

import SwiftUI

struct Toggles: View {
    
    @State var toggleIson: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIson ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIson) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
        
    }
}

struct Toggles_Previews: PreviewProvider {
    static var previews: some View {
        Toggles()
    }
}
