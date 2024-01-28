//
//  LibraryView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 21.01.2024.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var isEditing = false
    
    var body: some View {
        
        NavigationView() {
            VStack {
                if !isEditing {
                    Text("Ищете свою музыку?")
                        .navigationTitle("Медиатека")
                        .font(.system(size: 24))
                        .bold()
                        .padding(2)
                    
                    Text("Здесь появится купленная Вами в \n \t\t iTunes Store музыка. ")
                        .foregroundStyle(.gray)
                        .toolbar {
                            Button(action: {
                                withAnimation {
                                    isEditing.toggle()
                                }
                            }) {
                                Text(isEditing ? "Готово" : "Править")
                            }
                        }
                        .foregroundStyle(.red)
                } else {
                    
                    CategoryListView()
                        .navigationTitle("Медиатека")
                        .toolbar {
                            Button(action: {
                                withAnimation {
                                    isEditing.toggle()
                                }
                            }) {
                                Text(isEditing ? "Готово" : "Править")
                            }
                            .foregroundStyle(.red)
                        }
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
