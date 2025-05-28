//
//  ContentView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Greetings!")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
