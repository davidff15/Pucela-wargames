//
//  MainTabView.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 7/5/25.
//
import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Tab = .home
    let user: User

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedTab {
                case .home:
                    HomeView(viewModel: HomeViewModel(user: user), selectedTab: $selectedTab)
                case .calendar:
                    CalendarView(viewModel: CalendarViewModel(createEventUseCase: CreateEventUseCaseImpl(repository: MockEventsRepository())))
                case .profile:
                    ProfileView()
                }
            }
            
            Spacer()

            BottomTabBar(selectedTab: selectedTab) { newTab in
                selectedTab = newTab
            }
        }
    }
}
