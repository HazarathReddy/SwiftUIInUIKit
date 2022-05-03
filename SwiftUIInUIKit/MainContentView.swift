//
//  MainContentView.swift
//  SwiftUIInUIKit
//
//  Created by airtel on 02/05/22.
//

import SwiftUI

struct MainContentView: View {

    // @State property wrapper tracks the changes and render on UI
    @State var isAlert = false
    var body: some View {

        Button("It's me") {
            isAlert.toggle()
        }
        .alert(isPresented: $isAlert) {
            Alert(title: Text("It's SwiftUI"), message: Text("Welcome to SWiftUI"), dismissButton: .default(Text("OK")))
        }

    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}










