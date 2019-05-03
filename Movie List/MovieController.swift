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
        createMovie(withText: "Toy Story")
        createMovie(withText: "Lion King")
        createMovie(withText: "Finding Nemo")
    }
    
    func createMovie(withText title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
    }
    
    func toggle
    
    var movies: [Movie] = []
}
