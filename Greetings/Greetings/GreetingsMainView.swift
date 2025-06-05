//
//  GreetingsMainView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 6/5/25.
//

import SwiftUI
// Portrait = Compact width, regular height
struct GreetingsMainView: View {
    
    // MARK: - Properties
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
     
        //Portrait mode
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            //Landscape mode
            LandscapeGreetingsView()
        }
        
    }
}

#Preview {
    GreetingsMainView()
}
