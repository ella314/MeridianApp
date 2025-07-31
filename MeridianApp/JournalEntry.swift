//
//  JournalEntry.swift
//  MeridianApp
//
//  Created by Scholar on 7/31/25.
//

import Foundation
import SwiftData

@Model
class JournalEntry {
    var text: String
    var date: Date

    init(text: String, date: Date = .now) {
        self.text = text
        self.date = date
    }
}
