//
//  VerticalBaseGreetingsTitleView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 6/5/25.
//

import SwiftUI

struct VerticalBaseGreetingsTitleView: View {
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            GreetingTextView(titleText: "Greetings!", headerText: "Exploring SwiftUI With Mojtaba!")
            RotatableCircleView()
            Spacer()
        } //HStack
        .padding(.vertical)
    }
}

#Preview {
    VerticalBaseGreetingsTitleView()
}
