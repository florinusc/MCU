//
//  MovieListViewModel.swift
//  MCU
//
//  Created by Florin Uscatu on 29.06.2022.
//

import Foundation

struct MovieListViewModel {
    
    private let movie: Movie
    
    var coverURL: URL? {
        return URL(string: movie.imageURL)
    }
    
    var title: String {
        return movie.title
    }
    
    var releaseDate: String? {
        let df = DateFormatter()
        df.dateFormat = "YYYY-MM-DD"
        let date = df.date(from: movie.releaseDate)
        return date?.formatted(date: .abbreviated, time: .omitted)
    }
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
