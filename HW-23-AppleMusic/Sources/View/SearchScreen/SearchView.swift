//
//  SearchView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 04.02.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    @State private var playlistCategoryData = PlaylistCategory.data
    
    var columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100)),
    ]
    
    var body: some View {
        NavigationView {
            
            VStack() {
                ScrollView(.vertical) {
                    Text("Поиск по категориям")
                        .font(.title2)
                        .bold()
                        .padding(.trailing, 120)
                        .padding(.bottom, -20)
                        .padding(.top, 10)
                    HStack {
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(playlistCategoryData, id: \.self) { playListCategory in
                                CategoryCell(playlistCategory: playListCategory)
                                
                            }
                            
                        }.padding(20)
                        
                            .searchable(text: $searchText, prompt: "Ваша Медиатека")
                    }
                    
                }
                VStack {
                    Spacer(minLength: 50)
                }
            }.navigationTitle("Поиск")
        }
    }
}

#Preview {
    SearchView()
}
