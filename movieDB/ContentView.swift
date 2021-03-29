//
//  ContentView.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    SearchBar()
                        .navigationBarTitle("Movie DB")
                }
                VStack{
                    HStack{
                        Text("Now Playing")
                            .font(.title3)
                            .padding(.all, 5)
                            .frame(alignment: .leading)
                        Spacer()
                        NavigationLink(destination: AllTheMovies()) {
                            Text("See all")
                                .padding(5)
                                .font(.title3)
                        }
                    }
                    HStack{
                        MovieListColumn()
                    }
                }
                
                HStack{
                    Text("Popular Movies")
                        .font(.title3)
                        .frame(alignment: .leading)
                    Spacer()
                }
                VStack{
                    List(movies, id: \.title) { movie in
                        NavigationLink(destination: MovieDetails(movie: movie)){
                            MovieRow(movie: movie)
                        }
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "iPhone 12"], id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
        
    }
}
