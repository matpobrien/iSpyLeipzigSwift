//
//  AccountSettingsView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct AccountSettingsView: View {
    var body: some View {

            GeometryReader { geometry in
                VStack {
                    Spacer(minLength: geometry.size.height * 0.06)
                    HeadingView(geometry: geometry, title: "Account Settings", color: .white)
                    Spacer()
                    AccountSettingsFormView(geometry: geometry, email: "email", username: "username", password: "password", tokens: 0)
                }

            }.background(Color.blue)
            .ignoresSafeArea()

    }
}

struct AccountSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingsView()
    }
}
