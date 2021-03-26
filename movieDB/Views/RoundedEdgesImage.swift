//
//  RoundedEdgesImage.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI

struct RoundedEdgesImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .scaledToFit()
    }
}

struct RoundedEdgesImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedEdgesImage(image: Image("Nobody"))
    }
}
