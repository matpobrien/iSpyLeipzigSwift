//
//  PostModel.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import Foundation
import SwiftUI

class Post {
    var date: Date
    var subject: String

    init(date: Date, subject: String) {
        self.date = date
        self.subject = subject
    }
}
