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
            /* GeometryReader {
             geometry in
             ZStack(alignment: .leading) {


             MainView(showMenu: self.$showMenu)
             .frame(width: geometry.size.width, height: geometry.size.height)
             .offset(x: self.showMenu ? geometry.size.width / 2 : 0)
             .disabled(self.showMenu ? true : false)
             if self.showMenu {
             MenuView().frame(width: geometry.size.width / 2)
             }
             }

             }*/
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
           VStack { LazyHStack {
                Text("DATE")
                    .padding(5)
                    .padding(.trailing, 35)
                    .background(Color.red)
                Text("SUBJECT").padding(5).padding(.trailing, 190).background(Color.red)

            }.foregroundColor(.white)
            LazyHStack {
                Text("DATE")
                    .padding(5)
                    .padding(.trailing, 35)
                    .background(Color.red)
                Text("SUBJECT").padding(5).padding(.trailing, 190).background(Color.red)

            }.foregroundColor(.white)
            LazyHStack {
                Text("DATE")
                    .padding(5)
                    .padding(.trailing, 35)
                    .background(Color.red)
                Text("SUBJECT").padding(5).padding(.trailing, 190).background(Color.red)

            }.foregroundColor(.white)
            LazyHStack {
                Text("DATE")
                    .padding(5)
                    .padding(.trailing, 35)
                    .background(Color.red)
                Text("SUBJECT").padding(5).padding(.trailing, 190).background(Color.red)

            }.foregroundColor(.white)
            LazyHStack {
                Text("DATE")

                    .padding(5)
                    .padding(.trailing, 35)
                    .background(Color.red)
                Text("SUBJECT").padding(5).padding(.trailing, 190).background(Color.red)

            }.foregroundColor(.white)
            LazyHStack {
                Text("DATE")
                    .padding(5)
                    .padding(.trailing, 35)
                    .background(Color.red)
                Text("SUBJECT").padding(5).padding(.trailing, 190).background(Color.red)

            }}.font(.subheadline).foregroundColor(.white)
            Spacer()
            FooterMenu()

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12")
            ContentView()
        }
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    var body: some View {
        Button(
            action: {
                self.showMenu = true
            },
            label: {Text("Menu")}).padding().foregroundColor(.red)
    }
}

struct FooterMenu: View {
    var body: some View {

        HStack(alignment: .center) {
            Image(systemName: "house").imageScale(.large).foregroundColor(.red)
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
