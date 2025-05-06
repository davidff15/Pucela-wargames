//
//  HomeViewModel.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var events: [Event] = []

    private let getEventsUseCase: GetEventsUseCase

    init(getEventsUseCase: GetEventsUseCase = GetEventsUseCase(repository: MockEventsRepository())) {
        self.getEventsUseCase = getEventsUseCase
        loadEvents()
    }

    private func loadEvents() {
        self.events = getEventsUseCase.execute()
    }
}
