//
//  CoffectionaryApp.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import SwiftUI

@main
struct CoffectionaryApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
