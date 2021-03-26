//
//  MovieColumn.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI

struct MovieColumn: View {
    var movie: Movie
    
    var body: some View {
        VStack{
            VStack{
                Image(movie.title)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    .scaledToFit()
                    .frame(height: 300, alignment: .center)
                    .padding(.all, 5)
                Spacer()
            }
            VStack{
                HStack{
                    Text(movie.title)
                        .font(.caption)
                        .frame(alignment: .leading)
                    Spacer()
                }
                HStack{
                    Text("⭐️")
                    Text(String(movie.rate))
                        .font(.caption2)
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
        }
        
    }
}

struct MovieColumn_Previews: PreviewProvider {
    static var previews: some View {
        MovieColumn(movie: movies[0])
    }
}



