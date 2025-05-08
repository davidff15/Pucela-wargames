//
//  EventsRepository.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import Foundation

protocol EventsRepository {
    func fetchEvents() -> [Event]
    func save(event: Event)
}
