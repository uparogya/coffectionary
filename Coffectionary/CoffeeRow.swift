//
//  CoffeeRow.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import SwiftUI

struct CoffeeRow: View {
    
    var coffee: Coffee
    
    var body: some View {
        HStack {
            coffee.image
                .resizable()
                .frame(width: 45, height: 45)
                .cornerRadius(100)
            Text(coffee.name)
        }
    }
}

struct CoffeeRow_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeRow(coffee: ModelData().coffees[0])
    }
}
