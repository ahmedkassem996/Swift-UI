//
//  AsyncImages.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 27/11/2022.
//

import SwiftUI

struct AsyncImages: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case.empty:
                ProgressView()
            case.success(let returnedImage):
                returnedImage
                 .resizable()
                 .scaledToFit()
                 .frame(width: 100, height: 100)
                 .cornerRadius(20)
            case.failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
            
    }
}

struct AsyncImages_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImages()
    }
}
