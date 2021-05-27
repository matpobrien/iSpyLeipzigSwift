//
//  PostModel.swift
//  iSpyLeipzig
//
//  Created by Mat on 27.05.21.
//

import Foundation
import SwiftUI

struct JournalPost {
    var date: Date
    var subject: String
    var content: String

    init(date: Date, subject: String, content: String) {
        self.date = date
        self.subject = subject
        self.content = content
    }
}
