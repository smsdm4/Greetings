//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 6/5/25.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            
            BaseBackgroundView()
            
            HStack {
                
                VerticalBaseGreetingsTitleView()
                
                Spacer()
                
                MessagesView()
                
            } //VStack
            .padding()
            
        } //ZStack
    }
}

#Preview {
    LandscapeGreetingsView()
}
