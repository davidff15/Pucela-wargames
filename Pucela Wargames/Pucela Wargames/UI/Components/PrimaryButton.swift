//
//  PrimaryButton.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 5/5/25.
//
import SwiftUI

struct PrimaryButton: View {
    let title: String
    var isLoading: Bool = false
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .frame(maxWidth: .infinity)
                    .padding()
            } else {
                Text(title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
        }
        .background(Color.black)
        .cornerRadius(12)
        .disabled(isLoading)
    }
}
