//
//  StationCell.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 30.01.2024.
//

import SwiftUI

struct StationCell: View {
    
    var station: Station
    
    var body: some View {
        
        HStack {
            Image(station.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading) {
                Text(station.stationTitle)
                    .font(.subheadline)
                    .padding(.top, 40)
                
                Text(station.stationSubTitle)
                    .font(.caption)
                    .foregroundStyle(.gray)
                Divider().padding(.top, 35)
            }
        }
    }
}

#Preview {
    StationCell(station: Station.data[0])
}
