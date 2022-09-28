//
//  ContextMenus.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 21/09/2022.
//

import SwiftUI

struct ContextMenus: View {
    
    @State var backgroundColor: Color = Color.red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Ahmed Kassem")
                .font(.headline)
            Text("Ahmed Kassem")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30.0)
        .background(backgroundColor.cornerRadius(30.0))
        .contextMenu {
            
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .black
            } label: {
                Text("Report Post")
            }
            
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Report Post")
                    Image(systemName: "heart.fill")
                }
                
            }
            
        }
    }
}

struct ContextMenus_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenus()
    }
}
