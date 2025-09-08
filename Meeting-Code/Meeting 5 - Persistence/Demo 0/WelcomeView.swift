//
//  WelcomeView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct WelcomeView: View {
    // TODO: change username from @State property to use UserDefaults
    @State private var username: String = ""
    
    @State private var tempName = ""

    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            if username.isEmpty {
                VStack(spacing: 16) {
                    Text("👋 Enter your name")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)

                    TextField("Your name", text: $tempName)
                        .padding()
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(12)
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.black.opacity(0.2))
                .cornerRadius(20)
            } else {
                VStack(spacing: 12) {
                    Text("🎉 Welcome")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)

                    Text(username)
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.black.opacity(0.25))
                .cornerRadius(20)
            }
            Button {
                if !username.isEmpty {
                    username = ""
                } else {
                    username = tempName
                }
            } label: {
                Text(!username.isEmpty ? "Change Name" : "Save Name")
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .background(Color.white)
                    .foregroundColor(.purple)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.purple.opacity(0.7)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
    }
}

#Preview {
    WelcomeView()
}
