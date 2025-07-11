//
//  GreetingsTip.swift
//  Greetings
//
//  Created by Mojtaba Mirzadeh on 7/9/25.
//

import SwiftUI
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on circle and disc")
    }
    
    var message: Text? {
        Text("Observe a nice animation with Mojtaba...!")
    }
}
