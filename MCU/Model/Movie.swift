//
//  Movie.swift
//  MCU
//
//  Created by Florin Uscatu on 28.06.2022.
//

import Foundation

struct Movie: Hashable {
    let id: Int
    let title: String
    let releaseDate: String
    let boxOffice: Int
    let duration: Int
    let imageURL: String
    let trailerURL: String
    let overview: String
    let director: String
    let phase: Int
    let saga: String
    let chronology: Int
    let numberOfPostCreditScenes: Int
    let imdbId: String
}

extension Movie {
    
    static func ironMan() -> Movie {
        return Movie(id: 1,
                     title: "Iron Man",
                     releaseDate: "2008-05-02",
                     boxOffice: 585171547,
                     duration: 126,
                     imageURL: "https://raw.githubusercontent.com/AugustoMarcelo/mcuapi/master/covers/iron-man.jpg",
                     trailerURL: "https://players.brightcove.net/5359769168001/BJemW31x6g_default/index.html?videoId=5786306590001",
                     overview: "2008's Iron Man tells the story of Tony Stark, a billionaire industrialist and genius inventor who is kidnapped and forced to build a devastating weapon. Instead, using his intelligence and ingenuity, Tony builds a high-tech suit of armor and escapes captivity. When he uncovers a nefarious plot with global implications, he dons his powerful armor and vows to protect the world as Iron Man.",
                     director: "Jon Favreau",
                     phase: 1,
                     saga: "Infinity Saga",
                     chronology: 3,
                     numberOfPostCreditScenes: 1,
                     imdbId: "tt0371746")
    }
        
    static func captainAmerica() -> Movie {
        return Movie(id: 5,
                     title: "Captain America: The First Avenger",
                     releaseDate: "2011-07-22",
                     boxOffice: 370569776,
                     duration: 124,
                     imageURL: "https://raw.githubusercontent.com/AugustoMarcelo/mcuapi/master/covers/captain-america-the-first-avenger.jpg",
                     trailerURL: "https://players.brightcove.net/5359769168001/rkg9u15t7b_default/index.html?videoId=5806328337001",
                     overview: "Marvel's 'Captain America: The First Avenger' focuses on the early days of the Marvel Universe when Steve Rogers volunteers to participate in an experimental program that turns him into the Super Soldier known as Captain America.",
                     director: "Joe Johnston",
                     phase: 1,
                     saga: "Infinity Saga",
                     chronology: 1,
                     numberOfPostCreditScenes: 1,
                     imdbId: "tt0458339")
    }
    
}
