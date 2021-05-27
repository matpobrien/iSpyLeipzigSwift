//
//  PostsView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct PostsView: View {
    let posts: [String] = ["Hello", "Hi", "What's up"]
    var body: some View {
        GeometryReader { geometry in
            ForEach(posts, id: \.self) { post in
            PostHeadingView(geometry: geometry)
            }
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
