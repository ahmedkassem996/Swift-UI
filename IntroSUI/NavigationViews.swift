//
//  NavigationViews.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 11/09/2022.
//

import SwiftUI

struct NavigationViews: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Press", destination: MyOtherScreen())
                Text("hfjdgfj")
                Text("hfjdgfj")
                Text("hfjdgfj")
            }
            .navigationTitle("All InBoxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(leading:
            HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            }
            ,
            trailing: NavigationLink(destination: MyOtherScreen(), label: {
                Image(systemName: "gear")
                    .accentColor(.red)
            }))
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            NavigationLink("Press", destination: RedScreen())
            
            VStack {
                Button("BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.largeTitle)
                Spacer()
            }
            
        }
    }
}

struct RedScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Red Screen")
                .navigationBarHidden(true)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct NavigationViews_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViews()
    }
}
