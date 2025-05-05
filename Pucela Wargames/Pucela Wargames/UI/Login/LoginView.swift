//
//  LoginView.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
import SwiftUI

struct LoginView: View {
    @StateObject var viewModel: LoginViewModel
    var onLoginSuccess: (User) -> Void

    @State private var animate = false

    var body: some View {
        ZStack {
            Color("BackgroundPurple")
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text("Pucela Wargames")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)

                VStack(spacing: 16) {
                    StyledTextField(
                        placeholder: "Email",
                        text: $viewModel.email,
                        keyboardType: .emailAddress
                    )

                    PrimaryButton(
                        title: "Login",
                        isLoading: viewModel.isLoading
                    ) {
                        viewModel.login { user in
                            onLoginSuccess(user)
                        }
                    }
                }
                .padding()
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                .shadow(radius: 10)

                if let error = viewModel.error {
                    Text(error)
                        .foregroundColor(.red)
                        .font(.footnote)
                }

                Spacer()
            }
            .padding(.horizontal, 32)
            .padding(.top, 80)
            //MARK: animation
            .opacity(animate ? 1 : 0)
            .offset(y: animate ? 0 : 50)
            .animation(.easeOut(duration: 1), value: animate)
            .onAppear {
                animate = true
            }
        }
    }
}
