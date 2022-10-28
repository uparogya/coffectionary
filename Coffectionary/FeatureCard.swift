//
//  FeatureCard.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct FeatureCard: View {
    var coffee : Coffee
    
    var body: some View {
        NavigationLink {
            CoffeeDetail(coffee: coffee)
        } label: {
            coffee.featureImage?
                .resizable()
                .aspectRatio(3 / 2, contentMode: .fit)
                .cornerRadius(10)
                .shadow(radius: 1)
                .overlay {
                    TextOverlay(coffee: coffee)
            }
        }
    }
}

struct TextOverlay: View {
    var coffee : Coffee
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
                VStack(alignment: .leading) {
                    Text(coffee.name)
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .bold()
                }
                .padding()
            }
            .foregroundColor(.white)
        }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(coffee: ModelData().features[0])
            
    }
}
