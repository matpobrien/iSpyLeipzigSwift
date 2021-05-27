//
//  HomeView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct HomeView: View {
    @State var color = ""
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                VStack(spacing: geometry.size.height * 0.5) {
                    HStack {
                        Spacer()
                        HeadingView(geometry: geometry, title: "Welcome to I Spy Leipzig!")
                        Spacer()
                    }
                    VStack {
                        Spacer()
                        NavRowView(geometry: geometry, leftTitle: "I Spy Board",  rightTitle: "Get Tokens", leftColor: .red, rightColor: .yellow)
                        NavRowView(geometry: geometry, leftTitle: "Account Settings",  rightTitle: "Help Center", leftColor: .blue, rightColor: .green)
                        Spacer(minLength: geometry.size.height * 2.5)
                        NavItemView(geometry: geometry, title: "Messages", color: .purple)
                        Spacer()
                    }
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

