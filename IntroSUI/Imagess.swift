//
//  Image.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 09/08/2022.
//

import SwiftUI

struct Imagess: View {
    var body: some View {
        Image("290785811_537438231401826_6365078462724107167_n")
//            .renderingMode(.template)
            .resizable()
//            .foregroundColor(.red)
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 300, height: 200, alignment: .center)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                Ellipse()
//            )
    }
}

struct Imagess_Previews: PreviewProvider {
    static var previews: some View {
        Imagess()
    }
}
