//
//  HeadingView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct HeadingView: View {
    let geometry: GeometryProxy
    var title: String
    var color: Color

    var body: some View {
        VStack {
            HStack {
                // TODO: Find actual icon for hamburger menu
                Image(systemName: "menubar.rectangle")
                    .imageScale(.large)
                    .foregroundColor(color)
                color
            }
            .frame(width: geometry.size.width * 0.92, height: geometry.size.width * 0.075, alignment: .leading)
            .border(color)
            Spacer()

            Text(title)
                .foregroundColor(color)
                .font(.system(
                        size: 30,
                        design: .monospaced))
            Spacer()
        }
        .frame(height: geometry.size.width * 0.5)
        .border(color)
    }
}



struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
