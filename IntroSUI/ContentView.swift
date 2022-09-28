//
//  ContentView.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 17/07/2022.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        
        Text("**This is how you bold a text**. *This is how you make text italic.* You can [click this link](https://www.appcoda.com) to go to appcoda.com")
            .font(.title)
            .lineLimit(nil)
        
        let privacyPolicyText = "Read our [Privacy Policy](https://example.com) here."
        Text(.init(privacyPolicyText))
        
        Text("**Your time is limited**, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition. [Privacy Policy](https://example.com)")
//            .fontWeight(.bold)
//            .padding()
//            .font(.system(size: 30, weight: .light, design: .rounded))
//            .foregroundColor(.brown)
//            .multilineTextAlignment(.center)
//            .lineLimit(nil)
////            .truncationMode(.tail)
//            .lineSpacing(12)
//            .rotation3DEffect(.degrees(40), axis: (x: 1, y: 0, z: 0))
//            .shadow(color: .gray, radius: 2, x: 0, y: 7)
        
//        List {
//            AppView(title: "SwiftUI", details: "iOS, macOS, and watchOS")
//            AppView(title: "Android Studio", details: "Android")
//            AppView(title: "React Native", details: "Android and iOS")
//            AppView(title: "Flutter", details: "Android, iOS, and the web")
//            AppView(title: "Xamarin", details: "Android and iOS")
//        }
    }
}

struct AppView: View {
    var title: String
    var details: String
    var body: some View {
        HStack {
            Image(systemName: "iphone")
                .resizable()
                .frame(width: 40, height: 50)
                .foregroundColor(.black)
            VStack(alignment: .leading){
                Text(title)
                    .font(.title)
                Text(details)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
