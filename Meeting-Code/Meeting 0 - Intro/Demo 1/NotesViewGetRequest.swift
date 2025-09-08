//
//  NotesViewGetRequest.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct NotesViewGetRequest: View {
    
    // initializing as empty to not break preview
    @State private var groceries: Grocery = Grocery(description: "", fruits: [])
    
    var body: some View {
        VStack {
            // TODO: paste Demo 0 code
            // TODO: attach .task{} modifier to the view
            // TODO: inside .task set groceries equal to the result of calling getFoods()
        }
    }
}

struct Grocery: Decodable {
    var description: String = ""
    var fruits: [String] = []
}

func getFoods() async throws -> Grocery {
    guard let url = URL(string: "https://raw.githubusercontent.com/dariusk/corpora/master/data/foods/fruits.json") else { fatalError("Invalid URL") }

    // TODO: make request using URLRequest

    // TODO: decode into Grocery using JSONDecoder
    
    // TODO: return ?
    return Grocery() // placeholder
}

#Preview {
    NotesViewGetRequest()
}
