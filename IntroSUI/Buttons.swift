//
//  Buttons.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 22/08/2022.
//

import SwiftUI

struct Buttons: View {
    
    @State var title: String = "Hello"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            Button("press"){
                self.title = "Welcome"
            }
            
            Button {
                self.title = "Welcome2"
            } label: {
                Text("press 2".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(11)
                            .shadow(radius: 4)
                    )
            }

            Button {
                self.title = "button 3"
            } label: {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    )
            }
            
            
            Button {
                self.title = "Finished"
            } label: {
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }

            
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
