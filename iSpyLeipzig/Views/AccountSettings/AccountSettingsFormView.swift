//
//  AccountSettingsFormView.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import SwiftUI

struct AccountSettingsFormView: View {
    let geometry: GeometryProxy
    @State var email: String
    @State var username: String
    @State var password: String
    @State var tokens: Int

    var body: some View {
        ScrollView {
            VStack {
                AccountTextField(label: "email", geometry: geometry, text: $email)
                AccountTextField(label: "username", geometry: geometry, text: $username)
                AccountTextField(label: "password", geometry: geometry, text: $password)}
            Text("Total tokens: \(tokens)")
            Button(action: { tokens += 1 }, label: { Text("Add Tokens") })
            Spacer()
        }.foregroundColor(.white)
        
    }
}

struct AccountSettingsFormView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingsView()
    }
}
