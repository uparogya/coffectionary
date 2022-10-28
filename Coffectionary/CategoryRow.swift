//
//  CategoryRow.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Coffee]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { coffee in
                        NavigationLink {
                            CoffeeDetail(coffee: coffee)
                        } label: {
                            CategoryItem(coffee: coffee)
                        }
                    }
                }
            }
            .padding(.bottom)
            .padding(.top)
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var coffees = ModelData().coffees
    
    static var previews: some View {
        CategoryRow(
            categoryName: coffees[0].category.rawValue,
            items: Array(coffees.prefix(4))
        )
    }
}
