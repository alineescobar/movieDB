//
//  MovieRow.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack{
            RoundedEdgesImage(image: movie.image)
                .frame(height: 150)
            VStack{
                HStack{
                    Text(movie.title)
                        .font(.headline)
                        .frame(alignment: .leading)
                    Spacer()
                }
                HStack {
                    Text(movie.description)
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .frame(maxHeight: 100, alignment: .trailing)
                        .lineLimit(4)
                    
                    Spacer()
                }

                HStack{
                    Text("⭐️")
                    Text(String(movie.rate))
                        .font(.caption2)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }
        
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 150))
    }
    
}
