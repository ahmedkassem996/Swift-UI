//
//  Stacks.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 15/08/2022.
//

import SwiftUI

struct Stacks: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex(back to front)
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: 300, height: 700, alignment: .center)
            
            VStack {
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 200, height: 200)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .center, spacing: 5)  {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                }
                
            }
            
        }
        
        
        
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
