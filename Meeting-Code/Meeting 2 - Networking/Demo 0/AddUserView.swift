//
//  AddUserView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct AddUserView: View {
    @State private var name = ""
    @State private var job = ""
    @State private var result: CreatedUser?
    @State private var errorString: String?

    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
            TextField("Job", text: $job)
                .textFieldStyle(.roundedBorder)

            Button("Create User") {
                Task {
                    do {
                        let user = try await NetworkService.shared.createUser(name: name, job: job)
                        result = user
                    } catch {
                        errorString = error.localizedDescription
                        print("Error: \(error)")
                    }
                }
            }

            if let result {
                Text("Created user with id: \(result.id)")
                Text("At: \(result.createdAt)")
            }
            if let errorString {
                Text("Error adding user: \(errorString)")
            }
        }
        .padding()
    }
}

#Preview {
    AddUserView()
}
