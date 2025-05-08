//
//  CreateEventUseCaseImpl.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 8/5/25.
//
final class CreateEventUseCaseImpl: CreateEventUseCase {
    private let repository: EventsRepository

    init(repository: EventsRepository) {
        self.repository = repository
    }

    func execute(event: Event) {
        repository.save(event: event)
    }
}
