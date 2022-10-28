//
//  PageView.swift
//  Coffectionary
//
//  Created by Arogya Upadhyaya on 7/10/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                    .frame(width: CGFloat(pages.count * 18))
                    .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(coffee: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
    }
}
