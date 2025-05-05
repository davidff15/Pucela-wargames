//
//  LoginViewModel.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
import Foundation

@MainActor
final class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var isLoading = false
    @Published var error: String?

    private let loginUseCase: LoginUseCase

    init(loginUseCase: LoginUseCase) {
        self.loginUseCase = loginUseCase
    }

    func login(completion: @escaping (User) -> Void) {
        Task {
            isLoading = true
            do {
                let user = try await loginUseCase.execute(email: email)
                completion(user)
            } catch {
                self.error = "Login failed"
            }
            isLoading = false
        }
    }
}
