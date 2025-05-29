//
//  BaseTextView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseTextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text) 
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
    }
}

#Preview {
    VStack {
        BaseTextView(text: "Greetings!", color: .blue)
        BaseTextView(text: "Greetings!", color: .green)
        BaseTextView(text: "Greetings!", color: .red)
    }
}
