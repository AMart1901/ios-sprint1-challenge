//
//  Movie.swift
//  Sprint2 Practice
//
//  Created by Lambda_School_Loaner_64 on 5/2/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import Foundation

class Movie {
    var movie: String
    var hasSeen: Bool
    
    init(movie: String, hasSeen: Bool = false) {
        self.movie = movie
        self.hasSeen = hasSeen
    }
}
