//
//  RadioView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 29.01.2024.
//

import SwiftUI

struct RadioView: View {
    
    let radioData = RadioEdition.data
    
    var rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
           
            LazyHGrid(rows: rows, spacing: 25) {
                ForEach(radioData, id: \.self) { radioEdition in
                    RadioCell(radioEdition: radioEdition)
                    
                    
                    
//                    VStack {
//                        ForEach(radioData, id: \.self) { radioEdition in
//                            Text(radioEdition.radioTitle)
//                        }
//                    }
//                    Rectangle()
//                        .foregroundColor(.yellow)
//                        .frame(width: 330)
                  //  Text(radioData[index].radioTitle)
                    
//                    Image(radioData[index].imageName)
//                        .resizable()
//                        .frame(width: 330)
                    
                }
            }.padding(30)
        }
    }
}

#Preview {
    RadioView()
}
