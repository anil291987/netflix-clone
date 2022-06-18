//
//  Movie.swift
//  netflix-clone (iOS)
//
//  Created by Joel Kingsley on 16/06/2022.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
