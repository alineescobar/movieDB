//
//  Movie.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable {
    var title: String
    var description: String
    var year: Int
    var genre: String
    var rate: Double
    var duration: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
}
