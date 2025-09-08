//
//  TransportationView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct TransportationView: View {
    @State private var selectedMode: Transportation = .car
    @State private var milesText: String = ""
    
    private var travelTime: String {
        guard let miles = Double(milesText), miles > 0 else {
            return ""
        }
        let hours = miles / selectedMode.speed
        return String(format: "%.1f hours", hours)
    }
    var body: some View {
        VStack(spacing: 24) {
                    // Title
                    Text("Travel Time Estimator")
                        .font(.title2.bold())
                        .padding(.top)

                    // TODO: create picker of Transportation cases and bind result to your transportation property

                    HStack {
                        Image(systemName: "ruler")
                            .foregroundColor(.blue)
                        TextField("Enter miles", text: $milesText)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding(.horizontal)

                    // Output card
                    VStack(spacing: 8) {
                        Image(systemName: selectedMode.icon)
                            .font(.system(size: 40))
                            .foregroundColor(.green)
                        Text("It will take you \(travelTime)")
                            .font(.headline)
                        Text("to get there by \(selectedMode.rawValue).")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                    .cornerRadius(16)
                    .shadow(radius: 3)

                    Spacer()
                }
                .padding()
    }
}

#Preview {
    TransportationView()
}
