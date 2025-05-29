//
//  ContentView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            BaseTextView(text: "Greetings!", color: .blue)
            BaseTextView(text: "Hello There!", color: .green)
            BaseTextView(text: "Darlings!", color: .red)
            
        } //VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
