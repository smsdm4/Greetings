//
//  BaseTextView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseTextView: View {
    
    // MARK: - Properties
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [.customRed, .customGreen, .customBlue, .customYellow, .customPurple, .customPink, .customOrange, .customCyan]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIpad ? .largeTitle : .body
    }
    
    // MARK: - Views
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.customWhite)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                //Randomly change the background color
                withAnimation {
                    color = colors.randomElement() ?? .customRed
                }
            }
    }
}

#Preview {
    VStack {
        BaseTextView(text: "Greetings!", color: .blue)
        BaseTextView(text: "Greetings!", color: .green)
        BaseTextView(text: "Greetings!", color: .red)
    }
}
