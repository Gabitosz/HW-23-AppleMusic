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
    
    var playlistCategoryImage: Image {
        Image(imageName)
    }
}

extension PlaylistCategory {
    
    static var data: [PlaylistCategory] = [
        PlaylistCategory(playlistCategoryTitle: "Зимнее время", imageName: "categorylist1"),
        PlaylistCategory(playlistCategoryTitle: "Поп на русском", imageName: "categorylist2"),
        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist3"),
        PlaylistCategory(playlistCategoryTitle: "Альтернатива", imageName: "categorylist4"),
        PlaylistCategory(playlistCategoryTitle: "Пространственное звучаение", imageName: "categorylist5"),
        PlaylistCategory(playlistCategoryTitle: "Хип-Хоп на русском", imageName: "categorylist6"),
        PlaylistCategory(playlistCategoryTitle: "Зарубежный Хип-Хоп", imageName: "categorylist7"),
        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist8"),
        PlaylistCategory(playlistCategoryTitle: "Танцевальный Поп", imageName: "categorylist9"),
        PlaylistCategory(playlistCategoryTitle: "R&B Соул", imageName: "categorylist10"),
        PlaylistCategory(playlistCategoryTitle: "Регги", imageName: "categorylist11"),
        PlaylistCategory(playlistCategoryTitle: "Поп R&B", imageName: "categorylist12"),
        
    ]
    
}
