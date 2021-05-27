//
//  PostsView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct JournalPostsView: View {
    // implement backend retrieval of posts
    let geometry: GeometryProxy
    let posts: [String] = ["Hello", "Hi", "What's up", "How Are You"]
    var body: some View {
        VStack {
            VStack(spacing: geometry.size.height * 0.75) {
                ForEach(posts, id: \.self) { post in
                    JournalPostHeadingView(geometry: geometry, subject: post)
                }
            }
        }
        .font(.subheadline)
        .foregroundColor(.white)
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
