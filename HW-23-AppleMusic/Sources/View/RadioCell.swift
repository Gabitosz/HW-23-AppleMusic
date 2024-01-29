//
//  RadioCell.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 29.01.2024.
//

import SwiftUI

struct RadioCell: View {
    
    var radioEdition: RadioEdition
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(radioEdition.radioTitle)
                .font(.subheadline)
                
            Text(radioEdition.radioEditionTitle)
                .font(.headline)
            Text(radioEdition.sloganTitle)
                .font(.subheadline)
            Image(radioEdition.imageName)
                .resizable()
                .frame(width: 320, height: 230)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
        }
    }
}

#Preview {
    RadioCell(radioEdition: RadioEdition.data[0])
}
