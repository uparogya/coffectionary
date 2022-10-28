//
//  SaveButton.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct SaveButton: View {
    
    @Binding var isSet : Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Save", systemImage: isSet ? "bookmark.fill" : "bookmark")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .brown : .primary)
        }
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton(isSet: .constant(true))
    }
}
