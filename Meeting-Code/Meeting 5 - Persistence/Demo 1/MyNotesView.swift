//
//  NotesView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

// TODO: for this to work, you will need to add define a modelContainer in the entry point of the app (Meeting_CodeApp.swift)

struct MyNotesView: View {
    // TODO: add modelContext variable from @Environment
    
    // TODO: change this variable to fetch from Swift Data using @Query
    var notes: [NoteModel] = []

    @State private var newNoteText: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                // Add new note
                HStack {
                    TextField("Enter note", text: $newNoteText)
                        .textFieldStyle(.roundedBorder)
                    Button("Add") {
                        let note = NoteModel(text: newNoteText)
                        // TODO: add note to modelContext
                        
                        // TODO: manually save modelContext
                        
                        newNoteText = ""
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()

                List {
                    ForEach(notes, id: \.self) { note in
                        VStack(alignment: .leading) {
                            Text(note.text)
                                .font(.headline)
                            Text(note.createdAt, style: .time)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .onDelete { indexSet in
                        for index in indexSet {
                            // TODO: delete notes[index] from modelContext
                        }
                        // TODO: manually save modelContext
                    }
                }
            }
            .navigationTitle("Notes")
        }
    }
}

#Preview {
    MyNotesView()
}
