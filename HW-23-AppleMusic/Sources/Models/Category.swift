//
//  Category.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import Foundation
import SwiftUI

struct Category: Identifiable, Hashable {
    
    var id = UUID()
    var name: String
    var isSelected = false
    var imageName: String
    var selectedImageName = "checkmark.circle.fill"
    var unselectedImageName = "circle"
    
    var image: Image {
        Image(systemName: imageName)
    }
    
    var circleBox: Image  {
        Image(systemName: isSelected ? selectedImageName : unselectedImageName)
    }
    
}

extension Category {
    static var data: [Category] = [Category(name:"Плейлисты", imageName: "music.note.list"),
                                   Category(name: "Артисты", imageName: "music.mic"),
                                   Category(name: "Альбомы", imageName: "square.stack"),
                                   Category(name: "Песни", imageName: "music.note"),
                                   Category(name: "Телешоу и фильмы", imageName: "tv"),
                                   Category(name: "Видеоклипы", imageName: "music.note.tv"),
                                   Category(name: "Жанры", imageName: "guitars"),
                                   Category(name: "Сборники", imageName: "person.2.crop.square.stack"),
                                   Category(name: "Авторы", imageName: "music.quarternote.3"),
                                   Category(name: "Загружено", imageName: "arrow.down.circle"),
                                   Category(name: "Домашняя коллекция", imageName: "music.note.house")
    ]
    
    mutating func toggleSelection() {
        isSelected.toggle()
    }
}
