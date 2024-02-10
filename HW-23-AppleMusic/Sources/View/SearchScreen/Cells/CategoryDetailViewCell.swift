//
//  CategoryDetailViewCell.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 06.02.2024.
//

import SwiftUI

struct CategoryDetailViewCell: View {
    
    @State var detailPlaylist: DetailPlaylist
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Text(detailPlaylist.playlistTitle)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                Text(detailPlaylist.playlistDescription)
                    .font(.headline)
                
                Text(detailPlaylist.playlistSubTitle)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
            }.padding(.bottom, 8)
            
            Image(detailPlaylist.imageName)
                .resizable()
                .frame(width: 320, height: 220)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(detailPlaylist.playlistImageDescription)
                            .font(.caption)
                            .foregroundColor(.white)
                            .bold()
                            .padding(8)
                    }
                    , alignment: .bottomLeading)
        }
    }
    
}

