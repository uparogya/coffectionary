//
//  CategoryItem.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct CategoryItem: View {
    var coffee : Coffee
    
    var body: some View {
        VStack(alignment: .leading) {
            coffee.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(20)
                .shadow(radius: 1)
            Text(coffee.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(coffee: ModelData().coffees[0])
    }
}
