//
//  GreetingTextView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 6/5/25.
//

import SwiftUI

struct GreetingTextView: View {
    
    let titleText: LocalizedStringKey
    let headerText: LocalizedStringKey
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(titleText)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(headerText)
                .font(.headline)
                .fontWeight(.thin)
        } //VStack
    }
}

#Preview {
    GreetingTextView(titleText: "Greetings!", headerText: "Exploring SwiftUI With Mojtaba!")
}
