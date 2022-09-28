//
//  Shapes.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 02/08/2022.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
//        RoundedRectangle(cornerRadius: 45)
        
//            .fill(Color.red)
//            .stroke(Color.green, lineWidth: 12)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [40]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.orange, lineWidth: 40)
//            .fill(Color.red)
//            .frame(width: 200, height: 700)
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
