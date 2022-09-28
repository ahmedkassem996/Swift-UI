//
//  Grids.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 18/08/2022.
//

import SwiftUI

struct Grids: View {
    
    let columns: [GridItem] =
    [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
        
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.red)
                .frame(height: 400)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders]) {
                
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame( maxWidth: .infinity, alignment: .leading)
                    .background(.orange)
                    .padding()
                        
                ){
                    ForEach(0..<100) { index in
                        Rectangle()
                            .fill(.orange)
                            .frame(height: 150)
                    }
                }
                
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame( maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                        
                ){
                    ForEach(0..<100) { index in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 150)
                    }
                }
                
                
            }
            
            

        }
        
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
