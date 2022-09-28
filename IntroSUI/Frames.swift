//
//  Frames.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 13/08/2022.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            .frame(width: 300, height: 300, alignment: .topLeading)
            .background(Color.red)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
