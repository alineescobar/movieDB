//
//  MovieListColumn.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI

struct MovieListColumn: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(movies, id: \.title) { movie in
                    NavigationLink(destination: MovieDetails(movie: movie)) {
                        MovieColumn(movie: movie)
                    }
                }
            }
        }
    }
}

struct MovieListColumn_Previews: PreviewProvider {
    static var previews: some View {
        MovieListColumn()
    }
}
