//
//  DetailPlaylist.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 10.02.2024.
//

import SwiftUI

struct DetailPlaylist: Identifiable, Hashable {
    
    var id = UUID()
    var playlistTitle: String
    var playlistDescription: String
    var playlistSubTitle: String
    var playlistImageDescription: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
