//
//  ExtractSubViews.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 23/08/2022.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        
        MyItem()
        
    }
}

struct ExtractSubViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViews()
    }
}

struct MyItem: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
    }
}
