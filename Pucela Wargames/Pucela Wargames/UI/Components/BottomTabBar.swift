//
//  BottomTabBar.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import SwiftUI

struct BottomTabBar: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
            Spacer()
            Image(systemName: "calendar")
            Spacer()
            Image(systemName: "person.fill")
            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.95))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}
