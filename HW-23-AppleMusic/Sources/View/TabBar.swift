//
//  TabBar.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = 0
    @State private var isKeyboardVisible = false
    
    
    init() {
        //        UITabBar.appearance().backgroundColor = UIColor(red: 247 / 255, green: 248 / 255, blue: 247 / 255, alpha: 1)
        NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillShowNotification,
            object: nil,
            queue: .main) { [self] notification in
                withAnimation {
                    self.isKeyboardVisible = true
                }
            }
        
        NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillHideNotification,
            object: nil,
            queue: .main) { [self] notification in
                withAnimation {
                    self.isKeyboardVisible = false
                }
            }
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
                RadioView()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchView()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            })
            if !isKeyboardVisible {
                MiniPlayer()
            }
        })
        .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)) { _ in
            withAnimation {
                self.isKeyboardVisible = true
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)) { _ in
            withAnimation {
                self.isKeyboardVisible = false
            }
        }
    }
}

#Preview {
    TabBar()
}

