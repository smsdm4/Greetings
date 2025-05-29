//
//  BaseBackgroundView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseBackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, Color(red: 139 / 255, green: 80 / 255, blue: 240 / 255)], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    BaseBackgroundView()
}
