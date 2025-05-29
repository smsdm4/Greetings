//
//  BaseTitleView.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 5/29/25.
//

import SwiftUI

struct BaseTitleView: View {
    
    let titleText: String
    let headerText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(titleText)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(headerText)
                .font(.headline)
                .fontWeight(.thin)
        } //VStack
    }
}

#Preview {
    BaseTitleView(titleText: "Greetings!", headerText: "Exploring SwiftUI...!")
}
