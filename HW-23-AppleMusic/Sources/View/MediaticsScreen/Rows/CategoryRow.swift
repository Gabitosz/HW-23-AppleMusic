//
//  CategoryRow.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import SwiftUI

struct CategoryRow: View {
    
    var category: Category
    
    var body: some View {
        HStack(spacing: 20) {
            category.circleBox
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundStyle(.red)
            category.image
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundStyle(.red)
            Text(category.name)
                .font(.system(size: 19))
            
            Spacer()
            
            Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 20, height: 10)
                .foregroundStyle(.gray)
        }
        .padding(.trailing, 10)
        .frame(height: 10)
    }
}

#Preview {
    CategoryRow(category: Category.data[0])
}
