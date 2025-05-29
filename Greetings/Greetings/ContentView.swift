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
            
            BaseTextView(text: messages[0].text, color: messages[0].color)
            BaseTextView(text: messages[1].text, color: messages[1].color)
            BaseTextView(text: messages[2].text, color: messages[2].color)
            
        } //VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
