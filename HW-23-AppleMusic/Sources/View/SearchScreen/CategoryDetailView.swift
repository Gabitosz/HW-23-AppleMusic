//
//  CategoryDetailView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 06.02.2024.
//

import SwiftUI

struct CategoryDetailView: View {
    
    var playlistCategory: PlaylistCategory
    
    @Environment(\.dismiss) var dismiss

//    var btnBack : some View { Button(action: {
//        self.presentationMode.wrappedValue.dismiss()
//        }) {
//            HStack {
//            Image("ic_back") // set image here
//                .aspectRatio(contentMode: .fit)
//                .foregroundColor(.white)
//                Text("Go back")
//            }
//        }
//    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(playlistCategory.playlistTitle)
                        .font(.subheadline)
                    
                    Text(playlistCategory.playlistSubTitle)
                        .font(.headline)
                    
                    Text(playlistCategory.playlistDescription)
                        .font(.subheadline)
                    
                }.padding(.bottom, 8)
                
                Image(playlistCategory.imageName)
                    .resizable()
                    .frame(width: 320, height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }.navigationTitle(playlistCategory.playlistCategoryTitle)
        }.navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "arrow.left")
                    }

                }
            }
    }
}

#Preview {
    CategoryDetailView(playlistCategory: PlaylistCategory.data[0])
}
