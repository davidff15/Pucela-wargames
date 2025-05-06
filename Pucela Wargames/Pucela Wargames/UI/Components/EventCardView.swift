//
//  EventCardView.swift
//  Pucela Wargames
//
//  Created by David Fernández  on 6/5/25.
//
import SwiftUI

struct EventCardView: View {
    let event: Event

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(event.name)
                .font(.headline)
                .foregroundColor(.black)

            Text(event.dateFormatted)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}
