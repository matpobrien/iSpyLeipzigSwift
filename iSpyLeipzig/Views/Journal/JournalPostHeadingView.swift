//
//  SwiftUIView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct JournalPostHeadingView: View {
    let geometry: GeometryProxy
    let subject: String

    var body: some View {
        VStack {
            HStack() {
                Spacer()
                Text("Date")
                    .padding()
                    .frame(width: geometry.size.width * 0.225, height: geometry.size.width * 0.075, alignment: .leading)
                    .background(Color.red)
                Text(subject)
                    .padding()
                    .frame(width: geometry.size.width * 0.675, height: geometry.size.width * 0.075, alignment: .leading)
                    .background(Color.red)
                Spacer()

            }.foregroundColor(.white)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
