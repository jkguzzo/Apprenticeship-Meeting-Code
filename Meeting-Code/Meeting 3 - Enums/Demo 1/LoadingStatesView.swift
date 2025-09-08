//
//  LoadingStatesView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct LoadingStatesView: View {
    // TODO: define an @State loadingState property of type LoadingState
    @State private var state: LoadingState = .idle

    var body: some View {
        VStack(spacing: 32) {
            Text("Loading State Demo")
                .font(.title2)
                .fontWeight(.bold)

            Group {
                // TODO: show different views depending on loadingState variable
                // if idle, show "Tap below to fetch data."
                // if loading, show ProgressView()
                // if success, show checkmark.circle.fill and its message
                // if failure, show xmark.octagon.fill and its error message
            }
            Button(action: fetchData) {
                Label("Fetch Data", systemImage: "arrow.clockwise")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }

    func fetchData() {
        state = .loading

        Task {
            try? await Task.sleep(nanoseconds: 2 * 1_000_000_000) // wait 2s

            if Bool.random() {
                state = .success("Data loaded successfully 🎉")
            } else {
                state = .failure("Something went wrong ❌")
            }
        }
    }
}

#Preview {
    LoadingStatesView()
}
