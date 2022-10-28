//
//  SavedCoffees.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct SavedCoffees: View {
    @EnvironmentObject var modelData: ModelData
    
    //Unsaved coffees filtration
    
    var savedCoffees: [Coffee]{
        modelData.coffees.filter { coffee in
           (coffee.isSaved)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(savedCoffees) { coffee in
                    NavigationLink{
                        CoffeeDetail(coffee: coffee)
                    } label: {
                        CoffeeRow(coffee: coffee)
                    }
                }
            }
            .navigationTitle("Saved")
            .foregroundColor(.primary)
        }
        .ignoresSafeArea(edges: .top)
    }
    
}

struct SavedCoffees_Previews: PreviewProvider {
    static var previews: some View {
        SavedCoffees()
            .environmentObject(ModelData())
    }
}
