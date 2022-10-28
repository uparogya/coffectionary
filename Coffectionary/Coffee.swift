//
//  Coffee.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/9/22.
//

import Foundation
import SwiftUI

struct Coffee: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var origin: String
    var caffine: String
    var strength: String
    var ingredients: String
    var recipe: String
    var isSaved: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case four = "Sweet Brews"
        case one = "Chilled Brews"
        case two = "All-Nighter Pals"
        case three = "Boozed Brews"
        case five = "Other Brews"
    }
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    var featureImage : Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
}
