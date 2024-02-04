//
//  RadioView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 29.01.2024.
//

import SwiftUI

struct RadioView: View {
    
    let radioData = RadioEdition.data
    let stationData = Station.data
    
    var rows = [
        GridItem(.flexible())
    ]
    
    var columns = [
        GridItem(.flexible(), alignment: .leading)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical) {
                    Divider().padding()
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHGrid(rows: rows, spacing: 10) {
                                ForEach(radioData, id: \.self) { radioEdition in
                                    RadioCell(radioEdition: radioEdition)
                                }
                            }
                        }.padding(25)
                            .padding(.top,-30)
                            .padding(.bottom, -20)
                    }
                    
                    Divider().padding()
                    
                    VStack(alignment: .leading) {
                        Text("Станции")
                            .font(.title)
                            .bold()
                            .padding(.leading)
                            .padding(.bottom, -10)
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(stationData, id: \.self) { station in
                                StationCell(station: station)
                            }
                        }.padding(20)
                    }
                    VStack {
                        Spacer(minLength: 90)
                    }
                }
            }.navigationTitle("Радио")
        }
    }
}
#Preview {
    RadioView()
}
