//
//  NoteModel.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import Foundation

// TODO: turn this into SwiftData model
class NoteModel: Hashable, Equatable {
    var text: String
    var createdAt: Date
    
    init(text: String, createdAt: Date = Date()) {
        self.text = text
        self.createdAt = createdAt
    }
    
    static func == (lhs: NoteModel, rhs: NoteModel) -> Bool {
        lhs.text == rhs.text && lhs.createdAt == rhs.createdAt
    }
    
    // Hashable conformance
    func hash(into hasher: inout Hasher) {
        hasher.combine(text)
        hasher.combine(createdAt)
    }
}
