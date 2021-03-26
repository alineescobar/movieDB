//
//  SearchBar.swift
//  movieDB
//
//  Created by Aline Osana Escobar on 25/03/21.
//

import SwiftUI
 
struct SearchBar: View {
//    @Binding var text: String
 
//    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            Text("Search ...")
                .padding(7)
                .padding(.horizontal, 25)
                .frame(width:UIScreen.main.bounds.width)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .foregroundColor(.gray)

        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
