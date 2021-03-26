//
//  AllTheMovies.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 26/03/21.
//

import SwiftUI

struct AllTheMovies: View {
    var body: some View {
        List(movies, id: \.title) { movie in
            MovieColumn(movie: movie)
        }
    }
}

struct AllTheMovies_Previews: PreviewProvider {
    static var previews: some View {
        AllTheMovies()
    }
}
