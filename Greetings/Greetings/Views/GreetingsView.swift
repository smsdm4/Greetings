//
//  ContentView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/28/25.
//

import SwiftUI

struct GreetingsView: View {
    var body: some View {
        ZStack {
            
            BaseBackgroundView()
            
            VStack(alignment: .leading) {
                
                BaseGreetingsTitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
                
            } //VStack
            .padding()
            
        } //ZStack
    }
}

#Preview {
    GreetingsView()
}
