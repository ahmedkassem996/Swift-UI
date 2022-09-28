//
//  SafeAreas.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 21/08/2022.
//

import SwiftUI

struct SafeAreas: View {
    var body: some View {
        Text("Hello, World!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SafeAreas_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreas()
    }
}
