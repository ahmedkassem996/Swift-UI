//
//  ScrollViews.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 17/08/2022.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack(alignment: .center, spacing: 20){
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(alignment: .center, spacing: 20){
                            ForEach(0..<100) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 100, height: 100)
                                    .shadow(radius: 10.0)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
