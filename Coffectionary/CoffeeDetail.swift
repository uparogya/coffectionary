//
//  CoffeeDetail.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import SwiftUI

struct CoffeeDetail: View {
    
    @EnvironmentObject var modelData : ModelData
    
    var coffeeIndex : Int {
        modelData.coffees.firstIndex(where: { $0.id==coffee.id })!
    }
    
    var coffee: Coffee
    
    var body: some View {
        ScrollView {
            
            Spacer().frame(height:20)
            
            HStack(alignment: .center) {
                Spacer()
                
                //Image
                CoffeeImage(image: coffee.image)
                
                //Description
                VStack(alignment: .leading) {
                    HStack {
                        Text(coffee.name)
                            .font(.title)
                            .fontWeight(.medium)
                            .underline(color: .gray)
                        
                        Spacer()
                        
                        SaveButton(isSet: $modelData.coffees[coffeeIndex].isSaved)
                    }
                    Text(" ")
                    HStack {
                        Text("Origin:")
                            .font(.subheadline)
                        Spacer()
                        Text(coffee.origin)
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    HStack {
                        Text("Caffeine:")
                            .font(.subheadline)
                        Spacer()
                        Text(coffee.caffine)
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    HStack {
                        Text("Strength:")
                            .font(.subheadline)
                        Spacer()
                        Text(coffee.strength)
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                }
                .frame(height: 175)
                
                Spacer()
            }
            
            Divider()
                .overlay(.secondary)
                .padding()
            
            //Rectangle().frame(width: .infinity, height: 0.25, alignment: .center).padding(10)
            
            //Ingredients
            HStack {
                Spacer()
                Text("Ingredients :")
                    .font(.headline)
                Text(coffee.ingredients)
                    .font(.subheadline)
                    .fontWeight(.light)
                Spacer()
            }
            
            Divider()
                .overlay(.secondary)
                .padding()
            
            //Rectangle().frame(width: .infinity, height: 0.25, alignment: .center).padding(10)
            
            //Recipe
            VStack {
                HStack {
                    Spacer()
                    Text("Preparation Method")
                        .font(.headline)
                        .underline(color: .gray)
                    Spacer()
                }
                Spacer().frame(height: 15)
                Text(coffee.recipe)
                    .font(.body)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            Spacer()
        }
        .navigationTitle(coffee.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CoffeeDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        CoffeeDetail(coffee: modelData.coffees[0])
            .environmentObject(modelData)
    }
}
