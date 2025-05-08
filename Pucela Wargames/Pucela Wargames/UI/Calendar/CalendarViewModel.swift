//
//  CalendarViewModel.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 8/5/25.
//
import Foundation
import SwiftUI

final class CalendarViewModel: ObservableObject {
    @Published var selectedDate: Date = Date()

    private let createEventUseCase: CreateEventUseCase

    init(createEventUseCase: CreateEventUseCase) {
        self.createEventUseCase = createEventUseCase
    }

    func confirmSelection() {
        let event = Event(
            id: UUID(),
            name: "Custom Game",
            date: selectedDate
        )
        createEventUseCase.execute(event: event)
    }
}
