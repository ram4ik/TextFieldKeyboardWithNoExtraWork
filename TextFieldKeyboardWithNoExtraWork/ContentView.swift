//
//  ContentView.swift
//  TextFieldKeyboardWithNoExtraWork
//
//  Created by ramil on 23.07.2020.
//

import SwiftUI

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView: View {
    @State private var someText = ""
    
    var body: some View {
        VStack {
            TextField("Type text...", text: $someText)
                .padding()
            Button("Submit") {
                dismissKeyboard()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
