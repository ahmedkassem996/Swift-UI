//
//  EnvironmentObjects.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 06/11/2022.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["wefwe", "wefwef", "wefwef", "eqwfwe", "qwefwf"])
    }
}

struct EnvironmentObjects: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailsView(selecteditem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailsView: View {
    
    let selecteditem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink  {
                FinalView()
            } label: {
                Text(selecteditem)
                    .font(.headline)
                    .foregroundColor(Color.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.red, Color.orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjects_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjects()
    }
}
