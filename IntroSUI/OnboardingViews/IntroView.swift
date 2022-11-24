//
//  IntroView.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 23/11/2022.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentuserSignedIn: Bool = false
    
    var body: some View {
        // background
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            if currentuserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            }
            
            // if user is signed in
            // profile view
            // else
            // onboarding view
            
        }
        
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
