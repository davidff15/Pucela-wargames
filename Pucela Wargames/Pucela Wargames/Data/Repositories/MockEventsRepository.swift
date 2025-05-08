//
//  MockEventsRepository.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import Foundation

final class MockEventsRepository: EventsRepository {
    
    private(set) var savedEvents: [Event] = []
    
    func save(event: Event) {
            savedEvents.append(event)
            print("Mock saved event: \(event.name) on \(event.dateFormatted)")
        }
    
    func fetchEvents() -> [Event] {
        return Event.mocked()
    }
}
