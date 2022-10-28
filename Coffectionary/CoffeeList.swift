//
//  CoffeeList.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import SwiftUI

struct CoffeeList: View {
    
    //NEW CHANGE
    @EnvironmentObject var modelData : ModelData
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List(filteredCoffees){ coffee in
                NavigationLink{
                    CoffeeDetail(coffee: coffee)
                } label: {
                    CoffeeRow(coffee: coffee)
                }
            }
            .navigationTitle("Brews")
            .searchable(text: $searchText, prompt: "Search for Brews")
        }
        .ignoresSafeArea(edges: .top)
    }
    
    var filteredCoffees : [Coffee] {
        if searchText.isEmpty {
            return modelData.coffees
        } else {
            return modelData.coffees.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

struct CoffeeList_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeList()
        //NEW CHANGE
            .environmentObject(ModelData())
    }
}
