//
//  MessagesView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Greetings!", color: .blue),
        .init(text: "Hello There!", color: .green),
        .init(text: "Exploring iOS Programming...!", color: .yellow),
        .init(text: "Darlings!", color: .red)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { message in
                BaseTextView(text: message.text, color: message.color)
            }
        } //VStack
    }
}

#Preview {
    MessagesView()
}
