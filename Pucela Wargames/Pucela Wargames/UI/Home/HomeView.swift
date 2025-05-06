//
//  HomeView.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        ZStack {
            Color("BackgroundPurple")
                .ignoresSafeArea()

            VStack(spacing: 0) {
                ScrollView {
                    VStack(spacing: 20) {
                        Text("Upcoming Events")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top)

                        ForEach(viewModel.events) { event in
                            EventCardView(event: event)
                        }
                    }
                    .padding()
                }

                BottomTabBar()
            }
        }
    }
}
