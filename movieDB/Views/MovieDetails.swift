//
//  MovieDetails.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 26/03/21.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie
    
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Image(movie.title)
                        .resizable()
                        .frame(width: 100, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        .padding(5)
                    
                }
                VStack{
                    HStack {
                        Text(movie.title)
                            .font(.title2)
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    HStack {
                        Text(movie.genre)
                            .font(.caption)
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    HStack{
                        Text("⭐️")
                        Text(String(movie.rate))
                            .frame(alignment: .leading)
                        Spacer()
                    }
                }
            }
            
            VStack{
                HStack {
                    Text("Overview")
                        .padding(.leading, 15)
                        .padding(.top, 5)
                        .padding(.bottom, 10)
                        .frame(alignment: .leading)
                    Spacer()
                }
                
                HStack{
                    Text("Release date: \(String(movie.year))")
                        .padding(.leading, 15)
                        .padding(.bottom, 10)
                    Text("Duration: \(movie.duration)")
                        .padding(.bottom, 10)
                    Spacer()
                    
                }
                Text(movie.description)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    .padding(.all, 15)
                    .frame(alignment: .leading)
                Spacer()
            }
        }
        
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: movies[0])
    }
}
