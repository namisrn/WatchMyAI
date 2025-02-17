//
//  Conversations.swift
//  watchmygpt
//
//  Created by Sasan Rafat Nami on 28.03.24.
//

import Foundation
import SwiftData

@Model
class Conversations: Identifiable {
    var title: String
    var createdDate: Date
    var lastModified: Date
    
    @Relationship var messages: [Chat]
    
    init(
        title: String,
        createdDate: Date = Date(),
        lastModified: Date = Date(),
        messages: [Chat] = []
    ) {
        self.title = title
        self.createdDate = createdDate
        self.lastModified = lastModified
        self.messages = messages
    }
    
    func updateLastModified() {
        self.lastModified = Date()
    }
}
