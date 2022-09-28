//
//  Spacer.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 16/08/2022.
//

import SwiftUI

struct Spacersss: View {
    var body: some View {
        HStack(spacing: 200) {
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 100, height: 100)
                        
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }
        .background(Color.blue)
    }
}

struct Spacersss_Previews: PreviewProvider {
    static var previews: some View {
        Spacersss()
    }
}
