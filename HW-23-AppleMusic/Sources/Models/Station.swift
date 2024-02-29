//
//  Station.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 30.01.2024.
//

import Foundation
import SwiftUI

struct Station: Hashable {
    
    var stationTitle: String
    var stationSubTitle: String
    var imageName: String
    
    var stationImage: Image {
        Image(imageName)
    }
}

extension Station {
    
    static var data: [Station] = [
        Station(stationTitle: "Популярное", stationSubTitle: "То, что слушают прямо сейчас", imageName: "station1"),
        Station(stationTitle: "Музыка для расслабления", stationSubTitle: "Электронная медитация", imageName: "station2"),
        Station(stationTitle: "Классика", stationSubTitle: "Выдающиеся образцы жанра", imageName: "station3"),
        Station(stationTitle: "The Heart Beat of Lagos", stationSubTitle: "Выдающиеся образцы Lagos", imageName: "station4"),
        Station(stationTitle: "Классика", stationSubTitle: "Выдающиеся образцы Los 40 classic", imageName: "station5"),
    ]
    
}
