//
//  Movie.swift
//  TableViews
//
//  Created by Minh To on 2021-11-06.
//

import Foundation

class Movie {
    var movieTitle: String
    var movieGenre: String
    var releaseYear: String
    
    init(mTitle: String, mGenre: String, rYear: String) {
        self.movieTitle = mTitle
        self.movieGenre = mGenre
        self.releaseYear = rYear
    }
}
