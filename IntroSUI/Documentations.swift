//
//  Documentations.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 05/10/2022.
//

import SwiftUI

struct Documentations: View {
    
    @State var data: [String] =
    [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text("\(name)")
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert")
            }
        }
    }
    
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
    
}

struct Documentations_Previews: PreviewProvider {
    static var previews: some View {
        Documentations()
    }
}
