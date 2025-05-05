//
//  LoginUseCase.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
final class LoginUseCase {
    private let repository: AuthRepository

    init(repository: AuthRepository) {
        self.repository = repository
    }

    func execute(email: String) async throws -> User {
        try await repository.login(email: email)
    }
}
