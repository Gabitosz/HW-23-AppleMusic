//
//  RadioEdition.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 29.01.2024.
//

import Foundation
import SwiftUI

struct RadioEdition: Hashable {
    
    var radioTitle: String
    var radioEditionTitle: String
    var sloganTitle: String
    var imageName: String
    
    var image: Image  {
        Image(imageName)
    }

}

extension RadioEdition {
    
    static var data: [RadioEdition] = [RadioEdition(radioTitle: "Новый Выпуск", radioEditionTitle: "Музыкальный базар с Бастой", sloganTitle: "Новое шоу", imageName: "radio1"),
    RadioEdition(radioTitle: "Избранная радиостанция", radioEditionTitle: "Популярное", sloganTitle: "То, что слушают прямо сейчас", imageName: "radio2"),
    RadioEdition(radioTitle: "Избранная радиостанция", radioEditionTitle: "Хип - Хоп", sloganTitle: "Идеальные биты и рифмы.", imageName: "radio3")
    ]
}
