//
//  ContentView.swift
//  iSpyLeipzig
//
//  Created by Mat on 23.05.21.
//

import SwiftUI

struct ContentView: View {

    @State var showMenu = false

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "menubar.rectangle")

                        .imageScale(.large)
                        .foregroundColor(.red)
                    Color.red
                }.frame(height: 30)
                .border(Color.red)
                Text("Self Evaluation Journal")
                    .padding(.leading, 50)
                    .padding(.bottom, 190)
                    .foregroundColor(.red)
                    .font(.system(
                            size: 30,
                            design: .monospaced))

            }.border(Color.red).padding()
            VStack {
                PostsView()

            }
            .font(.subheadline).foregroundColor(.white)
            Spacer()
            FooterMenu()

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    let geometry: GeometryProxy
    static var previews: some View {
        Group {
           ContentView()
        }
    }
}

struct FooterMenu: View {
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
