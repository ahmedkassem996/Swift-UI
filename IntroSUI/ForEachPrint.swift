//
//  ForEach.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 17/08/2022.
//

import SwiftUI

struct ForEachPrint: View {
    
    let data: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    let myString = "Number is: "
    
    var body: some View {
        VStack (alignment: .leading, spacing: 30){
            ForEach(0..<10) { index in
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.red)
                        Text("\(index)")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                    }
                    Text("\(myString)\(data[index])")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct ForEachPrint_Previews: PreviewProvider {
    static var previews: some View {
        ForEachPrint()
    }
}
