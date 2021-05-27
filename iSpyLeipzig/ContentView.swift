//
//  ContentView.swift
//  iSpyLeipzig
//
//  Created by Mat on 23.05.21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 2

    var body: some View {
        TabView(selection: $selection) {
            DashboardView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            JournalView()
                .tabItem {
                        Image(systemName: "book")
                }
                .tag(1)
           AccountSettingsView()
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(2)
        }
        // .tabViewStyle(PageTabViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

