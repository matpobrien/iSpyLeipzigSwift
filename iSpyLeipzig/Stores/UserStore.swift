//
//  UserStore.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import Foundation
import Combine

struct User: Identifiable, Hashable {
    let id = UUID()
    var username: String
    var password: AnyHashable
    var tokens: Int = 0
}

final class UserStore: ObservableObject {
    @Published var user: User

    init(user: User) {
        self.user = user
    }
    // will have to implement backend calls here? not sure
    func changeUsername(newUsername: String) {
        self.user.username = newUsername
    }

    func changePassword(newPassword: AnyHashable) {
        self.user.password = newPassword
    }

    func addTokens(tokensAdded: Int) {
        self.user.tokens += tokensAdded
    }

    func useTokens(tokens: Int) {
        self.user.tokens -= tokens
    }
}
