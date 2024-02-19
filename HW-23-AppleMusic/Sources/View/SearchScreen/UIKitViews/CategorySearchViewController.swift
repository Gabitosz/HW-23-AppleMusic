//
//  SearchViewController.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 19.02.2024.
//

import UIKit

class CategorySearchViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .yellow
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        view.addSubview(collectionView)
    }
    
    func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 16),
            collectionView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -16),
        
        ])
    }
}
