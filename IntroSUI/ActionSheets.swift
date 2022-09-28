//
//  ActionSheets.swift
//  IntroSUI
//
//  Created by Ahmed Kasem on 21/09/2022.
//

import SwiftUI

struct ActionSheets: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        
        Button ("Click here") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
    }
    
    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("This is the title"))
        
        let btn1: ActionSheet.Button = .default(Text("Default"))
        let btn2: ActionSheet.Button = .destructive(Text("Destrictive"))
        let btn3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is title"),
            message: Text("This is message"),
            buttons: [btn1, btn2, btn3]
        )
    }
    
}

struct ActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheets()
    }
}
