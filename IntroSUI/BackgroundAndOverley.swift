//
//  BackgroundAndOverley.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 14/08/2022.
//

import SwiftUI

struct BackgroundAndOverley: View {
    var body: some View {
//        Text("Press")
//            .foregroundColor(Color.white)
//            .font(.largeTitle)
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.brown]), startPoint: .leading, endPoint: .trailing)
//                    )
//            )
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )
        
//        Rectangle()
//            .frame(width: 350, height: 550)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 300, height: 500, alignment: .center)
//            )
//
//            .overlay(
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 250, height: 450, alignment: .center)
//            )
//
//            .overlay(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 200, height: 400, alignment: .center)
//            )
//
//            .overlay(
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 350, alignment: .center)
//            )
//
//            .overlay(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 300, alignment: .center)
//            )
//
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 400, height: 600, alignment: .center)
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: Color.red, radius: 10.0, x: 0.0, y: 10.0)
                .overlay(
                   Circle()
                    .fill(Color.pink)
                    .frame(width: 35, height: 35, alignment: .center)
                    .overlay(
                        Text("3")
                            .font(.headline)
                            .foregroundColor(Color.white)
                    )
                    .shadow(color: Color.red, radius: 10.0, x: 5, y: 5)
                   ,alignment: .bottomTrailing
                )
            )
    }
}

struct BackgroundAndOverley_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverley()
    }
}
