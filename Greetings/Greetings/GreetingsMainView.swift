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
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
     
        //Portrait mode
        if isPortraitPhone || isIpad {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            //Landscape mode
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
        
    }
}

#Preview {
    GreetingsMainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
