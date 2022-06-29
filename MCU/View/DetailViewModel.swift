//
//  DetailViewModel.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import Foundation

class DetailViewModel: ObservableObject {
    
    private unowned let coordinator: CoordinatorObject
    
    private let movie: Movie
    
    var movieTitle: String {
        return movie.title
    }
    
    init(coordinator: CoordinatorObject, movie: Movie) {
        self.coordinator = coordinator
        self.movie = movie
    }
    
}
