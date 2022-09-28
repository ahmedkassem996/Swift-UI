//
//  Sheets.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 11/09/2022.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.green)
                    .font(.largeTitle)
                    .padding(20)
            }
            
        }
    }
}


struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        Sheets()
    }
}
