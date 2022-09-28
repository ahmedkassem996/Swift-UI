//
//  Initializer.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 16/08/2022.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .Apple {
            self.title = "Apple"
            self.backgroundColor = .red
        } else {
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case Apple
        case Orange
    }
    
    var body: some View {
        VStack(spacing: 12.0){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150, alignment: .center)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Initializer(count: 99, fruit: .Apple)
            Initializer(count: 100, fruit: .Orange)
        }
        
    }
}
