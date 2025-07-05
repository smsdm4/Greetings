//
//  GreetingsMainView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 6/5/25.
//

import SwiftUI

// Portrait = Compact width, regular height
// iPad = regular width, regular height

struct GreetingsMainView: View {
    
    // MARK: - Properties
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
     
        //Portrait mode
        if isPortraitPhone || isIpad {
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
