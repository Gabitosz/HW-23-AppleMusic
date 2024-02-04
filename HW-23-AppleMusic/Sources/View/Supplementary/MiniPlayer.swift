//
//  MiniPlayer.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import SwiftUI

struct MiniPlayer: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        VStack {
            HStack(spacing: 15) {
                Image("rihannaDiamonds")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                Text("Rihanna - Diamonds")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button (action: {} , label:  {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                })
                Button (action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundStyle(colorScheme == .dark ? .white : .gray)
                })
            }
            .padding(.horizontal)
        }
        .frame(height: 70)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }
        )
        .offset(y: -45)
    }
}

#Preview {
    MiniPlayer()
}
