//
//  BlurView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 25.01.2024.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    @Environment(\.colorScheme) var colorScheme
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: colorScheme == .dark ? .dark : .systemChromeMaterialLight))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: colorScheme == .dark ? .dark : .systemChromeMaterialLight)
    }
}

