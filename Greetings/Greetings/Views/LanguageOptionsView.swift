//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 7/5/25.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    // MARK: - Properties
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    // MARK: - Views
    var body: some View {
        
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Farsi") {
                language = "fa"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            Button("Arabic") {
                language = "ar"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            Button("Spanish") {
                language = "es"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
        
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
