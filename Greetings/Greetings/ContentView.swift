//
//  ContentView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/28/25.
//

import SwiftUI

struct ContentView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Greetings!", color: .blue),
        .init(text: "Hello There!", color: .green),
        .init(text: "Darlings!", color: .red),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ForEach(messages) { message in
                BaseTextView(text: message.text, color: message.color)
            }
            
        } //VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
