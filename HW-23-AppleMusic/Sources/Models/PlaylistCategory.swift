//
//  PlaylistCategory.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 04.02.2024.
//

import SwiftUI

struct PlaylistCategory: Identifiable, Hashable {
    
    var id = UUID()
    var playlistCategoryTitle: String
    var imageName: String
    var playlistSubTitle: String
    var playlistTitle: String
    var playlistDescription: String
    
    var playlistCategoryImage: Image {
        Image(imageName)
    }
}

extension PlaylistCategory {
    
    static var data: [PlaylistCategory] = [
        PlaylistCategory(playlistCategoryTitle: "Зимнее время", imageName: "categorylist1", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Поп на русском", imageName: "categorylist2", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist3", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Альтернатива", imageName: "categorylist4", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Пространственное звучаение", imageName: "categorylist5", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Хип-Хоп на русском", imageName: "categorylist6", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Зарубежный Хип-Хоп", imageName: "categorylist7", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist8", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Танцевальный Поп", imageName: "categorylist9", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "R&B Соул", imageName: "categorylist10", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Регги", imageName: "categorylist11", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        PlaylistCategory(playlistCategoryTitle: "Поп R&B", imageName: "categorylist12", playlistSubTitle: "Some", playlistTitle: "Tin", playlistDescription: "G"),
        
        
        
        
//        PlaylistCategory(playlistCategoryTitle: "Зимнее время", imageName: "categorylist1"),
//        PlaylistCategory(playlistCategoryTitle: "Поп на русском", imageName: "categorylist2"),
//        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist3"),
//        PlaylistCategory(playlistCategoryTitle: "Альтернатива", imageName: "categorylist4"),
//        PlaylistCategory(playlistCategoryTitle: "Пространственное звучаение", imageName: "categorylist5"),
//        PlaylistCategory(playlistCategoryTitle: "Хип-Хоп на русском", imageName: "categorylist6"),
//        PlaylistCategory(playlistCategoryTitle: "Зарубежный Хип-Хоп", imageName: "categorylist7"),
//        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist8"),
//        PlaylistCategory(playlistCategoryTitle: "Танцевальный Поп", imageName: "categorylist9"),
//        PlaylistCategory(playlistCategoryTitle: "R&B Соул", imageName: "categorylist10"),
//        PlaylistCategory(playlistCategoryTitle: "Регги", imageName: "categorylist11"),
//        PlaylistCategory(playlistCategoryTitle: "Поп R&B", imageName: "categorylist12"),
        
    ]
    
}
