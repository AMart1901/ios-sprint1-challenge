//
//  NoteController.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import Foundation

class MovieController {
    
    init() {
        createMovie(with: "Toy Story")
        createMovie(with: "Lion King")
        createMovie(with: "Finding Nemo")
    }
    
    func createMovie(with title: String) {
        let movie = Movie(movie: title)
        movies.append(movie)
    }
    
    func toggleHasSeen(for movie: Movie) {
        movie.hasSeen = !movie.hasSeen
    }
    
    var movies: [Movie] = []
}
