//
//  Models.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 30/10/2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    
    let displayedName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct Models: View {
    
    @State var users: [UserModel] =
    [
        UserModel(displayedName: "Ahmed", userName: "Mohamed", followerCount: 20, isVerified: true),
        UserModel(displayedName: "Mohamed", userName: "Mohamed", followerCount: 20, isVerified: false),
        UserModel(displayedName: "Ahmed", userName: "Mohamed", followerCount: 20, isVerified: false),
        UserModel(displayedName: "Mohamed", userName: "Mohamed", followerCount: 20, isVerified: true)
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(users) { name in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(name.displayedName)
                            Text("@\(name.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if name.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(name.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
            .foregroundColor(Color.black)
        }
        
    }
}

struct Models_Previews: PreviewProvider {
    static var previews: some View {
        Models()
    }
}
