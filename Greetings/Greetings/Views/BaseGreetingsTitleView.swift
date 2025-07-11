//
//  BaseTitleView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI
import TipKit

struct BaseGreetingsTitleView: View {
    
    // MARK: - Properties
    private var greetingTip = GreetingsTip()
    
    // MARK: - Body
    var body: some View {
        HStack {
            GreetingTextView(titleText: "Greetings!", headerText: "Exploring SwiftUI With Mojtaba!")
            Spacer()
            RotatableCircleView()
                .popoverTip(greetingTip)
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
