//
//  TopMoviePreview.swift
//  netflixClone
//
//  Created by Maksym on 13.01.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    
    var movie: Movie
    var body: some View {
        VStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
