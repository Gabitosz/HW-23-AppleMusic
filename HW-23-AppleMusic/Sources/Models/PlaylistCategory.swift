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
    var detailPlaylists: [DetailPlaylist]
    var playlistCategoryImage: Image {
        Image(imageName)
    }
    
    var albumsTitle: String
    var albumsImagesName: [String]
    
}

extension PlaylistCategory {
    
    static var data: [PlaylistCategory] = [
        PlaylistCategory(playlistCategoryTitle: "Зимнее время", imageName: "categorylist1", detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Избранный плейлист", playlistDescription: "Гербарий", playlistSubTitle: "Apple Music",playlistImageDescription: "Спокойная и уютная инди-музыка, которая вдохновляет на год вперед.", imageName: "detail1"),
                             DetailPlaylist(playlistTitle: "Экспериментальные звуки", playlistDescription: "Энергия для дня", playlistSubTitle: "Apple Music", playlistImageDescription: "Путешествие в мир экспериментальной музыки. Откройте для себя уникальные звуки и атмосферы, созданные талантливыми музыкантами.", imageName: "detail2"),
                             DetailPlaylist(playlistTitle: "Лучшие хиты 2024", playlistDescription: "Эмоциональные хиты", playlistSubTitle: "Apple Music", playlistImageDescription: "Спокойная и уютная", imageName: "detail3")],
                         albumsTitle: "Настроение - осень", albumsImagesName: ["categorylist5", "categorylist6", "categorylist7"]),
        
        PlaylistCategory(playlistCategoryTitle: "Поп на русском", imageName: "categorylist2",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Энергия для дня", playlistDescription: "Сверхъестественные звуки", playlistSubTitle: "Apple Music", playlistImageDescription: "Лучшие хиты 2024", imageName: "detail4"),
                             DetailPlaylist(playlistTitle: "Эмоциональная мозаика", playlistDescription: "Хиты десятилетия", playlistSubTitle: "Apple Music", playlistImageDescription: "Мощные басовые линии в этом плейлисте заряжают энергией. Для любителей глубоких звуков", imageName: "detail5"),
                             DetailPlaylist(playlistTitle: "Ритмы ночного города", playlistDescription: "Эмоциональные хиты", playlistSubTitle: "Apple Music", playlistImageDescription: "Музыка, которая заденет самые глубокие чувства. Эмоциональные хиты для каждого настроения.", imageName: "detail6")],
                         
                         albumsTitle: "Настроение - танцы", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist3",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Весенний вдохновляющий плейлист", playlistDescription: "Вокруг света с музыкой", playlistSubTitle: "Apple Music", playlistImageDescription: "Сборник треков, отражающих культурное разнообразие мира. Путешествуйте вместе с музыкой", imageName: "detail7"),
                             DetailPlaylist(playlistTitle: "Космические звуки", playlistDescription: "Танцевальные ритмы латино", playlistSubTitle: "Apple Music", playlistImageDescription: "Страстные и энергичные треки латиноамериканской музыки. Танцуйте под жаркие ритмы.", imageName: "detail8"),
                             DetailPlaylist(playlistTitle: "Жизнь в ритме джаза", playlistDescription: "Музыкальный праздник", playlistSubTitle: "Apple Music", playlistImageDescription: "Энергичные биты и качающие рифмы этого плейлиста поднимут вам настроение в любой момент.", imageName: "detail9")],
                         
                         albumsTitle: "Настроение - ритм", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Альтернатива", imageName: "categorylist4",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Альтернативные вибрации", playlistDescription: "Акустический вечер", playlistSubTitle: "Apple Music", playlistImageDescription: "Эклектичный сборник альтернативных треков. Откройте для себя необычные и уникальные звучания.", imageName: "detail10"),
                             DetailPlaylist(playlistTitle: "Вдохновение в каждой ноте", playlistDescription: "Танцевальная атака", playlistSubTitle: "Apple Music", playlistImageDescription: "Битвы на танцполе начинаются с этого плейлиста. Самые горячие треки для танцевальных вечеров.", imageName: "detail11"),
                             DetailPlaylist(playlistTitle: "Акустический вечер", playlistDescription: "Танцевальная эйфория", playlistSubTitle: "Apple Music", playlistImageDescription: "Зажигательные треки для танцевальных вечеров и ярких впечатлений.", imageName: "detail12")],
                         
                         albumsTitle: "Настроение - энергия", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Пространственное звучаение", imageName: "categorylist5",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Сила кинематографа", playlistDescription: "Спокойствие нового века", playlistSubTitle: "Apple Music", playlistImageDescription: "Современные треки, приносящие спокойствие и умиротворение.", imageName: "detail13"),
                             DetailPlaylist(playlistTitle: "Треки для души", playlistDescription: "Магия акустического звучания", playlistSubTitle: "Apple Music", playlistImageDescription: "Атмосфера магии в каждой струне. Акустические произведения для души.", imageName: "detail14"),
                             DetailPlaylist(playlistTitle: "Путеводитель по лучшим джазовым стандартам", playlistDescription: "Индустриальные эксперименты", playlistSubTitle: "Apple Music", playlistImageDescription: "Экспериментальные и инновационные звуки в жанре индустриальной музыки.", imageName: "detail15")],
                         
                         albumsTitle: "Настроение - танцевальное", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Хип-Хоп на русском", imageName: "categorylist6",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Музыкальные новинки", playlistDescription: "Эмоциональные хиты", playlistSubTitle: "Apple Music", playlistImageDescription: "Музыка, которая заденет самые глубокие чувства. Эмоциональные хиты для каждого настроения.", imageName: "detail16"),
                             DetailPlaylist(playlistTitle: "Плейлист для креативных идей", playlistDescription: "Сверхъестественные звуки", playlistSubTitle: "Apple Music", playlistImageDescription: "Загадочные и сверхъестественные мелодии этого плейлиста создадут атмосферу таинства.", imageName: "detail17"),
                             DetailPlaylist(playlistTitle: "Чувственные мелодии", playlistDescription: "Хиты десятилетия", playlistSubTitle: "Apple Music", playlistImageDescription: "Сборник лучших хитов последнего десятилетия. Вспомните и переживите яркие моменты.", imageName: "detail8")],
                         
                         albumsTitle: "Настроение - ", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Зарубежный Хип-Хоп", imageName: "categorylist7",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Треки для активного отдыха", playlistDescription: "Энергия баса", playlistSubTitle: "Apple Music", playlistImageDescription: "Мощные басовые линии в этом плейлисте заряжают энергией. Для любителей глубоких звуков.", imageName: "detail9"),
                             DetailPlaylist(playlistTitle: "Электронные волны", playlistDescription: "Музыкальное путешествие в прошлое", playlistSubTitle: "Apple Music", playlistImageDescription: "Сборник лучших хитов последнего десятилетия. Вспомните и переживите яркие моменты.", imageName: "detail5"),
                             DetailPlaylist(playlistTitle: "Легенды хип-хопа", playlistDescription: "Треки для креативного вдохновения", playlistSubTitle: "Apple Music", playlistImageDescription: "Музыка, способствующая креативному вдохновению. Идеальный плейлист для творческой работы.", imageName: "detail6")],
                         
                         albumsTitle: "Настроение - вдохновение", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Поп", imageName: "categorylist8",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Музыкальный путеводитель по странам", playlistDescription: "Танцевальная эйфория", playlistSubTitle: "Apple Music", playlistImageDescription: "Зажигательные треки для танцевальных вечеров и ярких впечатлений.", imageName: "detail7"),
                             DetailPlaylist(playlistTitle: "Синтезаторные гармонии", playlistDescription: "Легкость летнего бриза", playlistSubTitle: "Apple Music", playlistImageDescription: "Освежающие мелодии, как летний бриз, приносят легкость и радость.", imageName: "detail8"),
                             DetailPlaylist(playlistTitle: "Музыкальная встреча времен", playlistDescription: "Электронные путешествия", playlistSubTitle: "Apple Music", playlistImageDescription: "Современные электронные треки, переносящие вас в мир цифровых звуков и технологических ритмов.", imageName: "detail9")],
                         
                         albumsTitle: "Настроение - танцевальное", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Танцевальный Поп", imageName: "categorylist9",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Биты и рифмы", playlistDescription: "Танцевальные хиты 90-х", playlistSubTitle: "Apple Music", playlistImageDescription: "Вспомните золотую эпоху танцевальной музыки с хитами 90-х годов.", imageName: "detail7"),
                             DetailPlaylist(playlistTitle: "Вокруг света с музыкой", playlistDescription: "Треки для зарядки утра", playlistSubTitle: "Apple Music", playlistImageDescription: "Энергичные композиции, чтобы начать день с положительного настроения и бодрости.", imageName: "detail8"),
                             DetailPlaylist(playlistTitle: "Музыкальный праздник", playlistDescription: "Треки для активного отдыха", playlistSubTitle: "Apple Music", playlistImageDescription: "Зажигательные треки для спортивных моментов. Поднимайте настроение и бодрствуйте вместе с этим плейлистом.", imageName: "detail9")],
                         
                         albumsTitle: "Настроение - вдохновение", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "R&B Соул", imageName: "categorylist10",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Исследование джунглей электроники", playlistDescription: "Эклектичная музыкальная палитра", playlistSubTitle: "Apple Music", playlistImageDescription: "Смешение стилей и жанров в одном плейлисте для ценителей разнообразия.", imageName: "detail10"),
                             DetailPlaylist(playlistTitle: "Классика для релакса", playlistDescription: "Симфония городской жизни", playlistSubTitle: "Apple Music", playlistImageDescription: "Звучание городских улиц, переплетенное с музыкой, создающее неповторимую атмосферу.", imageName: "detail11"),
                             DetailPlaylist(playlistTitle: "Танцевальная эйфория", playlistDescription: "Музыка для творческого вдохновения", playlistSubTitle: "Apple Music", playlistImageDescription: "Звуки, которые помогут вам в поиске вдохновения и развитии творческого мышления.", imageName: "detail12")],
                         
                         albumsTitle: "Настроение - творчество", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Регги", imageName: "categorylist11",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Вибрации регги", playlistDescription: "Вдохновение в каждой ноте", playlistSubTitle: "Apple Music", playlistImageDescription: "Ритмы Ямайки в вашем плейлисте. Наслаждайтесь солнечными и позитивными моментами.", imageName: "detail18"),
                             DetailPlaylist(playlistTitle: "Эмоциональные хиты", playlistDescription: "Космические звуки", playlistSubTitle: "Apple Music", playlistImageDescription: "Путешествуйте по космосу с этим плейлистом. Электронные мелодии и звуки будущего подарят вам уникальный опыт.", imageName: "detail19"),
                             DetailPlaylist(playlistTitle: "Треки для креативного вдохновения", playlistDescription: "Энергия для дня", playlistSubTitle: "Apple Music", playlistImageDescription: "Зарядитесь позитивной энергией этого плейлиста. Только самые бодрые треки для яркого и продуктивного дня.", imageName: "detail20")],
                         
                         albumsTitle: "Настроение - вдохновение", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
        PlaylistCategory(playlistCategoryTitle: "Поп R&B", imageName: "categorylist12",  detailPlaylists:
                            [DetailPlaylist(playlistTitle: "Энергия баса", playlistDescription: "Звуки фламенко", playlistSubTitle: "Apple Music", playlistImageDescription: "Атмосфера испанского фламенко в музыкальном формате. Страсть и танцевальные ритмы.", imageName: "detail13"),
                             DetailPlaylist(playlistTitle: "Хиты десятилетия", playlistDescription: "Jazz для уютного вечера", playlistSubTitle: "Apple Music", playlistImageDescription: "Идеальный выбор для создания уюта и атмосферы вечера под звуки джаза.", imageName: "detail14"),
                             DetailPlaylist(playlistTitle: "Танцевальные ритмы латино", playlistDescription: "Легкость летнего бриза", playlistSubTitle: "Apple Music", playlistImageDescription: "Освежающие мелодии, как летний бриз, приносят легкость и радость.", imageName: "detail15")],
                         
                         albumsTitle: "Настроение - уют", albumsImagesName: ["categorylist8", "categorylist9", "categorylist10"]),
        
    ]
    
}
