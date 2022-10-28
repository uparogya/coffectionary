//
//  CategoryHome.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData : ModelData
    @State private var showingSaved = false
    
    var body: some View {
        NavigationView {
            List{
                PageView(pages: modelData.features.map { FeatureCard(coffee: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                
                Divider().background(Color.secondary)
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) {key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        .padding(.bottom)
                }
                
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            
            .toolbar {
                Button {
                    showingSaved.toggle()
                } label: {
                    Label("Saved Brews", systemImage: "bookmark.fill")
                }
                .tint(.brown)
            }
            .sheet(isPresented: $showingSaved) {
                SavedCoffees()
                    .environmentObject(modelData)
            }
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
