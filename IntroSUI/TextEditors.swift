//
//  TextEditors.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 28/09/2022.
//

import SwiftUI

struct TextEditors: View {
    
    @State var textEditorText: String = "This the starting text"
    @State var savedtext: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.blue)
                    .colorMultiply(Color.orange)
                    .cornerRadius(10)
                
                Button {
                    savedtext = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedtext)
                
                Spacer()
                
            }
            .padding()
            .background(Color.green)
            .navigationTitle("Text Editor")
        }
        
    }
}

struct TextEditors_Previews: PreviewProvider {
    static var previews: some View {
        TextEditors()
    }
}
