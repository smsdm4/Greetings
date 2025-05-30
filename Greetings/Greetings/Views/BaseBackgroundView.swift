//
//  BaseBackgroundView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseBackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.customBlue, .customVividPurple], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    BaseBackgroundView()
}
