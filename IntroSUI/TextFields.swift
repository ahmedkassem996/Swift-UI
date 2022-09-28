//
//  TextFields.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 27/09/2022.
//

import SwiftUI

struct TextFields: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    saveText()
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                }
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text Field")
        }
        
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
