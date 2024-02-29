//
//  SearchView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 19.02.2024.
//

import SwiftUI

struct CategorySearchView: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let navigationController = UINavigationController(rootViewController: CategorySearchViewController())
        return navigationController
    }
}
