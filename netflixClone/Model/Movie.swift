//
//  Movie.swift
//  netflixClone
//
//  Created by Maksym on 08.01.2021.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    //MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episodes: [Episode]?
    
    var promotionHeadline: String? // some will have it , some will not 
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return " "
    }
    
}
