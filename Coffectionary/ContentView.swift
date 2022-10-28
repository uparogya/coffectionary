//
//  ContentView.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    enum Tab{
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem {
                    Label ("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            CoffeeList()
                .tabItem {
                    Label("Brews", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .environmentObject(ModelData())
        }
    }
}
