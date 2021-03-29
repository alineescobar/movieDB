//
//  MovieList.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
            List(movies, id: \.title) { movie in
                    MovieRow(movie: movie)
            }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
