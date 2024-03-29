//
//  CategoryCell.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 04.02.2024.
//

import SwiftUI

struct CategoryCell: View {
    
    var playlistCategory: PlaylistCategory
    @State private var isActive = false
    
    var body: some View {
        
        VStack {
            Image(playlistCategory.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 120)
                .overlay(
                    Text(playlistCategory.playlistCategoryTitle)
                        .foregroundStyle(.white)
                        .font(.system(size: 15))
                        .bold()
                        .padding(.bottom, 10)
                        .padding(.leading, 10)
                    , alignment: .bottomLeading)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .onTapGesture {
                    self.isActive = true
                }
                .background(
                    NavigationLink ( destination: CategoryDetailView(playlistCategory: playlistCategory), isActive: $isActive, label: {
                        /*@START_MENU_TOKEN@*/Text("Link")/*@END_MENU_TOKEN@*/
                        
                    }))
            
        }
    }
}

#Preview {
    CategoryCell(playlistCategory: PlaylistCategory.data[0])
}
