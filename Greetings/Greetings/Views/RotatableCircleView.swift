//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 6/5/25.
//

import SwiftUI

struct RotatableCircleView: View {
    
    // MARK: - Properties
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : .degrees(365)
    }
    
    var angularGradient: AngularGradient {
        .init(colors: [.customPink, .customPurple, .customBlue, .customOrange, .customYellow], center: .center, angle: .zero)
    }
    
    // MARK: - Body
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
