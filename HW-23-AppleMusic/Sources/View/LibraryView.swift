//
//  LibraryView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 21.01.2024.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView() {
            VStack {
                Text("Ищете свою музыку?")
                    .navigationTitle("Медиатека")
                    .font(.system(size: 24))
                    .bold()
                    .padding(2)
                Text("Здесь появится купленная Вами в \n              iTunes Store музыка. ")
                
                    .foregroundStyle(.gray)
                    .toolbar {
                        Button("Править") {
                            
                        }
                        .foregroundStyle(.red)
                    }
            }
        }
       
    }
}

#Preview {
    LibraryView()
}
