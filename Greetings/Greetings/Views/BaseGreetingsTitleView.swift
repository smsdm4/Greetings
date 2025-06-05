//
//  BaseTitleView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseGreetingsTitleView: View {
    // MARK: - Body
    var body: some View {
        HStack {
            GreetingTextView(titleText: "Greetings!", headerText: "Exploring SwiftUI With Mojtaba!")
            Spacer()
            RotatableCircleView()
        } //HStack
    }
}

#Preview {
    VStack {
        BaseGreetingsTitleView()
        Spacer()
    }
    .padding()
}
