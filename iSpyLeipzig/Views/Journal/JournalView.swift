//
//  JournalView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct JournalView: View {
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                VStack {
                    HeadingView(geometry: geometry, title: "Self Evaluation Journal", color: .red)
                    Spacer()
                    JournalPostsView(geometry: geometry)

                }.padding(.top, geometry.size.height * 0.1)
            }
        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
