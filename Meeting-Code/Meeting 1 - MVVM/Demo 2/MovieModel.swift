//
//  MovieModel.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import Foundation

struct Movie: Equatable {
    var title: String
    var isFavorite: Bool = false
}

extension Movie {
    static var example = [
        Movie(title: "Interstellar", isFavorite: true),
        Movie(title: "Happy Gilmore", isFavorite: false),
        Movie(title: "Hunger Games", isFavorite: false),
        Movie(title: "Someone Great", isFavorite: false),
        Movie(title: "Grown Ups", isFavorite: true),
        Movie(title: "Avengers", isFavorite: false),
        Movie(title: "The Girl in the Basement", isFavorite: false),
    ]
}
