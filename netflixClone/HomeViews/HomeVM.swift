//
//  HomeVM.swift
//  netflixClone
//
//  Created by Maksym on 08.01.2021.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
         movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Trending Now"] = exampleMovies.shuffled()
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Watch It Again "] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()


    }
    
}


