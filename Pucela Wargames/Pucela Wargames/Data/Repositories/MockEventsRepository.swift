//
//  MockEventsRepository.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import Foundation

final class MockEventsRepository: EventsRepository {
    func fetchEvents() -> [Event] {
        return Event.mocked()
    }
}
