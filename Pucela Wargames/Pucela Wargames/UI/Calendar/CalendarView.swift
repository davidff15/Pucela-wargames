//
//  CalendarView.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 7/5/25.
//
import SwiftUI

struct CalendarView: View {
    @StateObject var viewModel: CalendarViewModel

    var body: some View {
        ZStack {
            Color("BackgroundPurple")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Schedule Your Game")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()

                // Sección Select Date
                VStack(alignment: .leading, spacing: 10) {
                    Text("Select Date:")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)

                    // Aquí se añade un espacio adicional para evitar el solapamiento
                    DatePicker("", selection: $viewModel.selectedDate, displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        .accentColor(.black)
                        .frame(height: 250)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                }

                // Sección Select Time
                VStack(alignment: .leading, spacing: 10) {
                    Text("Select Time:")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)

                    DatePicker("", selection: $viewModel.selectedDate, displayedComponents: .hourAndMinute)
                        .datePickerStyle(.wheel)
                        .accentColor(.black)
                        .frame(width: 220, height: 220)

                    Button(action: {
                        viewModel.confirmSelection()
                    }) {
                        Text("Guardar")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 40)
                            .background(Color.black)
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 4)
                            .frame(maxWidth: .infinity)
                    }
            }

                Spacer()
            }
            .padding()
        }
    }
}
