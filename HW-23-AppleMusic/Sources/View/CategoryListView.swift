//
//  CategoryListView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import SwiftUI

struct CategoryListView: View {
    
    @State private var categoryData = Category.data
    
    var body: some View {
        
        VStack {
            List($categoryData, editActions: .move) { $category in
                HStack {
                    CategoryRow(category: category)
                        .onTapGesture {
                            category.isSelected.toggle()
                        }
                }.listSectionSeparator(.hidden, edges: .top)
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    CategoryListView()
}
