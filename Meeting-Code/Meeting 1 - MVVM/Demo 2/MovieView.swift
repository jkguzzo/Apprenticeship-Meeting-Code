//
//  MovieView.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import SwiftUI

struct MovieView: View {
    // TODO: move these properties to view model
    @State private var title: String = ""
    @State private var favoritesOnly: Bool = false
    @State private var movies: [Movie] = Movie.example
    @State private var moviesToShow: [Movie] = []
    
    // TODO: define @State variable of MovieViewModel

    var body: some View {
        NavigationStack {
            VStack {
                // TODO: change text binding
                TextField("", text: $title)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                HStack {
                    // TODO: change isOn binding
                    Toggle("Favorites Only", isOn: $favoritesOnly)
                }
                .padding()
                Divider()
                // TODO: change moviesToShow
                ForEach(moviesToShow, id: \.title) { movie in
                    HStack {
                        Text("\(movie.title)")
                        Spacer()
                        Button {
                            // TODO: change call to toggleFavorite
                            toggleFavorite(movie: movie)
                        } label: {
                            Image(systemName: movie.isFavorite ? "heart.fill" : "heart")
                                .foregroundStyle(.red)
                        }
                    }
                    .padding()
                    Divider()
                }
                Spacer()
                    .navigationTitle("Movies")
            }
        }
    }
    
    // TODO: move this function
    func toggleFavorite(movie: Movie) {
        if let index = movies.firstIndex(of: movie) {
            movies[index].isFavorite.toggle()
        }
    }
}

#Preview {
    MovieView()
}
