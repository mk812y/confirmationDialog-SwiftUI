//
//  ContentView.swift
//  confirmationDialog SwiftUI
//
//  Created by Михаил Куприянов on 20.9.23..
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
//        Button("Show Alert") { //Alert
        Button("Show Action Sheet") {
            isPresented.toggle()
        }
        .buttonStyle(.borderedProminent)
//        .alert("The button was tapped", //Alert
//            isPresented: $isPresented,
//            actions: {}) {
//            Text("Please confirm")
//        }
        .confirmationDialog(
            "Delete data?",//по умолчанию не отображается
            isPresented: $isPresented,
            titleVisibility: .visible//отображает скрытый по умолчанию "Delete data?"
        ) {
            Button("Yes, Delete", role: .destructive) {}//поменяли дефолтный цвет кнопки на красный
            Button("Delete but keep setting") {}
            Button("No, please", role: .cancel) {}//поменяли текст дефолтной кнопки Cancel
        } message: {//message необязательный
            Text("Please choose one option")
        }
        
    }
}

#Preview {
    ContentView()
}
