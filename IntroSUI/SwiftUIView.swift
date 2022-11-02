//
//  SwiftUIView.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 02/08/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("Hello!")
            .fontWeight(.heavy)
//            .strikethrough(true, color: .red)
//            .underline(true, color: .red)
//            .kerning(10)
//            .minimumScaleFactor(0.1)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .preferredColorScheme(.dark)
        SwiftUIView()
            .preferredColorScheme(.light)
    }
}
