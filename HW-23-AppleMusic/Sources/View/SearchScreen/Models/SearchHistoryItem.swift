//
//  SearchHistoryItem.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 13.02.2024.
//

import Foundation

struct SearchHistoryItem: Identifiable, Codable {
    var id = UUID()
    var searchTerm: String
}

class SearchHistoryStore: ObservableObject {
    @Published var searchHistory: [SearchHistoryItem] = []

    func addToHistory(searchTerm: String) {
        let newItem = SearchHistoryItem(searchTerm: searchTerm)
        searchHistory.append(newItem)
    }

    func clearHistory() {
        searchHistory.removeAll()
    }
}
