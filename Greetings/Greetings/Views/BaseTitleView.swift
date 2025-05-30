//
//  BaseTitleView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseTitleView: View {
    
    // MARK: - Properties
    let titleText: String
    let headerText: String
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : .degrees(365)
    }
    
    var angularGradient: AngularGradient {
        .init(colors: [.pink, .purple, .blue, .orange, .yellow], center: .center, angle: .zero)
    }
    
    // MARK: - Body
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 0) {
                Text(titleText)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(headerText)
                    .font(.headline)
                    .fontWeight(.thin)
            } //VStack
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
            
        } //HStack
    }
}

#Preview {
    VStack {
        BaseTitleView(titleText: "Greetings!", headerText: "Exploring SwiftUI...!")
        Spacer()
    }
    .padding()
}
