//
//  Alerts.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 20/09/2022.
//

import SwiftUI

struct Alerts: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
                .ignoresSafeArea(.all)
            
            Button("Click Here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
        
    }
    
    func getAlert() -> Alert {
       return Alert(
        title: Text("This is the title"),
          message: Text("Here we will describe the error"),
        primaryButton: .destructive(Text("Delete")),
        secondaryButton: .cancel())
    }
    
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
