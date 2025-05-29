//
//  ContentView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            BaseBackgroundView()
            
            VStack(alignment: .leading) {
                
                BaseTitleView(titleText: "Greetings!", headerText: "Exploring SwiftUI Programming")
                
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
    ContentView()
}
