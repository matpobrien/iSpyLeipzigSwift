//
//  ContentView.swift
//  iSpyLeipzig
//
//  Created by Mat on 23.05.21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0

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
                .foregroundColor(.red)
                .tag(1)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

// TODO: refactor this into tabsview
/* struct FooterMenu: View {
    var body: some View {

        HStack(alignment: .center) {
            NavigationLink(destination: Text("")){
                Image(systemName: "house").imageScale(.large).foregroundColor(.red)
            }
            Spacer()
            Image(systemName: "arrow.left")
                .foregroundColor(.red)
                .imageScale(.large)
                .padding(5)
                .border(Color.red)
                .padding(.trailing, 30)
            Image(systemName: "arrow.right")
                .foregroundColor(.red)
                .imageScale(.large)
                .padding(5)
                .border(Color.red)

        }.padding().border(Color.red).padding()

    }
}
*/

