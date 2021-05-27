//
//  SwiftUIView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct PostHeadingView: View {
    let geometry: GeometryProxy

    var body: some View {
        HStack() {
            Spacer()
            Text("DATE")
                .padding(.leading, 5)
                .frame(width: geometry.size.width * 0.225, height: geometry.size.width * 0.075, alignment: .leading)
                .background(Color.red)
            Text("SUBJECT")
                .padding(.leading, 5)
                .frame(width: geometry.size.width * 0.675, height: geometry.size.width * 0.075, alignment: .leading)
                .background(Color.red)
            Spacer()

        }.foregroundColor(.white)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
