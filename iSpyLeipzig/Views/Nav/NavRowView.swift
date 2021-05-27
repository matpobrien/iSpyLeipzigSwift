//
//  NavRowView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct NavRowView: View {
    let geometry: GeometryProxy
    let leftTitle: String
    let rightTitle: String
    let leftColor: Color
    let rightColor: Color
    var body: some View {
        VStack {
            HStack {
                NavItemView(geometry: geometry, title: leftTitle, color: leftColor)
                VStack {
                    Spacer(minLength: geometry.size.height * 5)
                    NavItemView(geometry: geometry, title: rightTitle, color: rightColor)
                }
            }
        }
    }
}


struct NavRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


