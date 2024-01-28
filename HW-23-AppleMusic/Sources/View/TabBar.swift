//
//  TabBar.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = 0
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 247 / 255, green: 248 / 255, blue: 247 / 255, alpha: 1)
    }
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView(selection: $current,
                    content:  {
                LibraryView()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text("Медиатека")
                    }
                Text("Радио")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Поиск")
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            })
            MiniPlayer()
        })
    }
}

#Preview {
    TabBar()
}
