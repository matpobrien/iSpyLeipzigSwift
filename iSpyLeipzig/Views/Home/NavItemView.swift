//
//  LeftNavItemView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct NavItemView: View {
    let geometry: GeometryProxy
    let title: String
    let color: Color

    var body: some View {
        VStack {
            HStack {
                // TODO: Find actual icon for hamburger menu
                Image(systemName: "menubar.rectangle")
                    .imageScale(.large)
                    .foregroundColor(color)
            }
            .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.075, alignment: .leading)


            VStack {
                Spacer()
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(
                            size: 20,
                            design: .monospaced))

                Spacer()
            }

            .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.25)
            .background(color)
        }
        .border(color)
    }
}

/* func dynamicColor(color: Color) -> Color {
    return Color(color)
}
*/

struct NavItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
