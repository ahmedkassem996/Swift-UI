//
//  FocusStates.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 30/11/2022.
//

import SwiftUI

enum OnboardingField {
    case username
    case password
}

struct FocusStates: View {
    
    @State private var username: String = ""
//    @FocusState private var userNameInFocus: Bool
    
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var feildInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($feildInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                .focused($feildInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SignIn 🏇") {
                let userNameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if userNameIsValid && passwordIsValid {
                    
                } else if userNameIsValid {
//                    userNameInFocus = false
//                    passwordInFocus = true
                    feildInFocus = .password
                } else {
//                    userNameInFocus = true
//                    passwordInFocus = false
                    feildInFocus = .username
                }
            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + (0.5)) {
//                self.userNameInFocus = true
//            }
//        }
    }
}

struct FocusStates_Previews: PreviewProvider {
    static var previews: some View {
        FocusStates()
    }
}
