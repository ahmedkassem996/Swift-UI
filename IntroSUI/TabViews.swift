//
//  TableViews.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 02/10/2022.
//

import SwiftUI

struct TabViews: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        
        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.orange)
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .background(
                RadialGradient(gradient: Gradient(colors: [Color.orange, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
            )
            
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//
//        }
//        .accentColor(.orange)
        
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
            
        }
    }
}
