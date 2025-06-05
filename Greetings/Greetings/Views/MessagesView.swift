//
//  MessagesView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Greetings!", color: .customPurple),
        .init(text: "Hello There!", color: .customGreen),
        .init(text: "Exploring iOS Programming...!", color: .customYellow),
        .init(text: "With...!", color: .customRed),
        .init(text: "My name is Mojtaba Mirzadeh!", color: .customGray)
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
