//
//  SearchView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 04.02.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    @State private var playlistCategoryData = PlaylistCategory.data
    
    @StateObject private var searchHistoryStore = SearchHistoryStore()
    
    @Binding var isKeyboardVisible: Bool
    
    var columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100)),
    ]
    
    var filteredPlaylistData: [PlaylistCategory] {
        if searchText.isEmpty {
            return playlistCategoryData
        } else {
            return playlistCategoryData.filter { playlistCategory in
                playlistCategory.playlistCategoryTitle
                    .prefix(searchText.count)
                    .localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            
            VStack() {
                ScrollView(.vertical) {
                    if isKeyboardVisible {
                        if !searchHistoryStore.searchHistory.isEmpty {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Недавние поиски")
                                        .font(.system(size: 16))
                                        .bold()
                                        .padding(.leading, 20)
                                        .padding(.bottom, 10)
                                    Spacer()
                                    Button("Очистить") {
                                        searchHistoryStore.clearHistory()
                                    }
                                    .font(.system(size: 14))
                                    .padding(.bottom, 7)
                                    
                                }
                                
                                ForEach(searchHistoryStore.searchHistory) { historyItem in
                                    Button(action: {
                                        searchText = historyItem.searchTerm
                                    }) {
                                        Image(systemName: "magnifyingglass").resizable().frame(width: 15, height: 15).foregroundStyle(.white)
                                        Text(historyItem.searchTerm)
                                            .foregroundStyle(.white)
                                            .font(.system(size: 16))
                                            .padding()
                                            .background(Color.gray.opacity(0.2))
                                            .cornerRadius(10)
                                    }
                                    .padding(.horizontal, 20)
                                }
                                
                                Divider()
                            }
                            .padding(.top, 10)
                        }
                    }
                    HStack {
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(filteredPlaylistData, id: \.self) { playListCategory in
                                CategoryCell(playlistCategory: playListCategory)
                                
                            }
                            
                        }.padding(20)
                            .searchable(text: $searchText, prompt: "Ваша Медиатека").onSubmit(of: .search) {
                                searchHistoryStore.addToHistory(searchTerm: searchText)
                            }
                    }
                    
                }
                
                if !isKeyboardVisible  {
                    VStack {
                        Spacer(minLength: 50)
                    }
                }
            }.navigationTitle("Поиск")
                .contentShape(Rectangle())
                .onTapGesture {
                    endEditing()
                }
        }.onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardDidShowNotification)) { _ in
            
        }
        
        
    }
    private func endEditing() {
        UIApplication.shared.endEditing()
        
    }
}

//#Preview {
//    SearchView()
//}
