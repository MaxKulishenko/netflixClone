//
//  MovieDetail.swift
//  netflixClone
//
//  Created by Maksym on 26.02.2021.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // close view
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }.padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MoviewInfoSubheadline(movie: movie)
                    }
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie3)
    }
}

struct MoviewInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            Text(String(movie.rating))
            
            Text(movie.numberOfSeasonsDisplay)
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
