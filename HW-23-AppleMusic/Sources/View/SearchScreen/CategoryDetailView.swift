//
//  CategoryDetailView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 06.02.2024.
//

import SwiftUI

struct CategoryDetailView: View {
    
    var playlistCategory: PlaylistCategory
    let playlistCategoryData = PlaylistCategory.data
    @Environment(\.dismiss) private var dismiss
    
    var rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        let detailPlaylists = playlistCategory.detailPlaylists
        
        VStack {
            ScrollView(.vertical) {
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(detailPlaylists, id: \.self) { detailPlaylist in
                                CategoryDetailViewCell(detailPlaylist:  detailPlaylist)
                            }
                        }
                    }.padding(25)
                        .padding(.top,-10)
                        .padding(.bottom, -20)
                    
                }
                
                HStack( content: {
                    Text(playlistCategory.albumsTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                        .bold()
                        .padding(.leading, 20)
                        .padding(.bottom, -15)
                    Text("См.все")
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                        .font(.subheadline)
                        .foregroundStyle(.red)
                }).padding(.bottom, -20)
                
                HStack {
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows) {
                            
                            ForEach(playlistCategory.albumsImagesName, id: \.self) { images in
                                HStack(){
                                    Image(images)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 180)
                                        .clipShape(RoundedRectangle(cornerRadius: 5))
                                }
                            }
                        }.padding(20)
                    }
                }
                VStack {
                    Spacer(minLength: 90)
                }
            }
            
        }.navigationTitle(playlistCategory.playlistCategoryTitle)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
            }
        
            .toolbar() {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                        }
                    }
                }
            }
    }
}

#Preview {
    CategoryDetailView(playlistCategory: PlaylistCategory.data[0])
}

