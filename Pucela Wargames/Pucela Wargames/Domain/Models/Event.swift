//
//  Event.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import Foundation

struct Event: Identifiable {
    let id: UUID
    let name: String
    let date: Date

    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }

    static func mocked() -> [Event] {
        return [
            Event(id: UUID(), name: "Warhammer 40K Tournament", date: Date()),
            Event(id: UUID(), name: "Painting Workshop", date: Date().addingTimeInterval(86400)),
            Event(id: UUID(), name: "Open Game Night", date: Date().addingTimeInterval(172800))
        ]
    }
}
