//
//  RootView.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
import SwiftUI

struct RootView: View {
    @State private var user: User?

    var body: some View {
        if let user = user {
            //HomeView(user: user) // <- aún por hacer
            HomeView()
        } else {
            let authRepo = AuthRepositoryImpl()
            let loginUseCase = LoginUseCase(repository: authRepo)
            let viewModel = LoginViewModel(loginUseCase: loginUseCase)
            LoginView(viewModel: viewModel) { loggedUser in
                self.user = loggedUser
            }
        }
    }
}
