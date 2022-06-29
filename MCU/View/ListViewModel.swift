//
//  ListViewModel.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import Foundation
import SwiftUI

class ListViewModel: ObservableObject {
    
    private unowned let coordinator: CoordinatorObject
    
    var numberOfMovies: Int {
        return movies.count
    }
    
    private let movies = [Movie.ironMan(), Movie.captainAmerica()]
    
    init(coordinator: CoordinatorObject) {
        self.coordinator = coordinator
    }
    
    func detailViewModel(at index: Int) -> DetailViewModel {
        return DetailViewModel(coordinator: coordinator, movie: movies[index])
    }
    
    func movieListViewModel(at index: Int) -> MovieListViewModel {
        return MovieListViewModel(movie: movies[index])
    }
    
    func logOut() {
        coordinator.logOut()
    }
    
}
