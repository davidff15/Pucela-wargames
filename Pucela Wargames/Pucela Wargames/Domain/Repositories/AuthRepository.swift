//
//  AuthRepository.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
protocol AuthRepository {
    func login(email: String) async throws -> User
}
