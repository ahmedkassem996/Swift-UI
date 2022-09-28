//
//  Lists.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 20/09/2022.
//

import SwiftUI

struct Lists: View {
    
    @State var showAlert: Bool = false
    @State private var fruitName: String = ""
    @State var fruits: [String] =
    [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete(index:))
                    .onMove(perform: move)
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.red)
        
    }
    
    var addButton: some View {
        Button("Add", action: {
//            add()
            showAlert.toggle()
        })
        .alert("Add", isPresented: $showAlert, actions: {
            TextField("Fruit Name", text: $fruitName)
            
            Button("Add", action: {})
            Button("Cancel", role: .cancel, action: {})
        }, message: {
            Text("Please enter your fruit name.")
        })
    }
    
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func move(indecis: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indecis, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("hsgdhgashdg")
    }
    
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
