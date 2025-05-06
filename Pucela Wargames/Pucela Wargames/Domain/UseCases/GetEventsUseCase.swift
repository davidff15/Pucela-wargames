//
//  GetEventsUseCase.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import Foundation

final class GetEventsUseCase {
    private let repository: EventsRepository

    init(repository: EventsRepository) {
        self.repository = repository
    }

    func execute() -> [Event] {
        return repository.fetchEvents()
    }
}
