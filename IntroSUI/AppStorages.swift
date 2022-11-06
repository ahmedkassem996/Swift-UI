//
//  AppStorage.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 06/11/2022.
//

import SwiftUI

struct AppStorages: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(currentUserName ?? "")
            
            Button("Save".uppercased()) {
                let name = "mohammed"
                currentUserName = name
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
        
    }
}

struct AppStorages_Previews: PreviewProvider {
    static var previews: some View {
        AppStorages()
    }
}
