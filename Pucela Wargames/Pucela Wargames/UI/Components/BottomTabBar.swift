//
//  BottomTabBar.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import SwiftUI

enum Tab {
    case home
    case calendar
    case profile
}

struct BottomTabBar: View {
    var selectedTab: Tab
    var onTabSelected: (Tab) -> Void

    var body: some View {
        HStack {
            Spacer()
            tabIcon(systemName: "house.fill", tab: .home)
            Spacer()
            tabIcon(systemName: "calendar", tab: .calendar)
            Spacer()
            tabIcon(systemName: "person.fill", tab: .profile)
            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.95))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding(.horizontal)
    }

    private func tabIcon(systemName: String, tab: Tab) -> some View {
        Image(systemName: systemName)
            .foregroundColor(selectedTab == tab ? .purple : .gray)
            .onTapGesture {
                onTabSelected(tab)
            }
    }
}
