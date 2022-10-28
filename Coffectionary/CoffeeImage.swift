//
//  CoffeeImage.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import SwiftUI

struct CoffeeImage: View {
    
    var image : Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 175, height: 175)
            .cornerRadius(20)
            .shadow(radius: 1)
    }
}

struct CoffeeImage_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeImage(image: Image("affogato"))
    }
}
