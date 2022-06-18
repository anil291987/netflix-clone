//
//  HomeViewModel.swift
//  netflix-clone (iOS)
//
//  Created by Joel Kingsley on 17/06/2022.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovies(forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-up Comedy"] = exampleMovies
        movies["New Releases"] = exampleMovies
        movies["Watch It Again"] = exampleMovies
        movies["Sci-fi Movies"] = exampleMovies
    }
}
