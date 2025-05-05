//
//  AuthRepositoryImpl.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
import Foundation

final class AuthRepositoryImpl: AuthRepository {
    func login(email: String) async throws -> User {
        // Simula delay de red
        try await Task.sleep(nanoseconds: 500_000_000)
        return User(id: UUID().uuidString, email: email)
    }
}
