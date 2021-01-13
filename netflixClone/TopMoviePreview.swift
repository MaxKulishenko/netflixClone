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
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count // 4
        
        // if 3+1 !=4
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
             
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .clipped()
            
            VStack {
                Spacer()
               
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        
                          HStack {
                            Text(category)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }

                    }
                }
        
                Text("Row of buttons")
            }
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
