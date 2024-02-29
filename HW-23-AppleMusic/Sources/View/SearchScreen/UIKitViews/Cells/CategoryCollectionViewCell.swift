//
//  CategoryCollectionViewCell.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 20.02.2024.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let id = "CategoryCollectionViewCell"
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let categoryTitle: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.heavy)
        title.textColor = .white
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        imageView.addSubview(categoryTitle)
        var views = [imageView]
        views.forEach { contentView.addSubview($0) }
    }
    
    func configure(title: String) {
        categoryTitle.text = title
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate ([
            
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            categoryTitle.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 5),
            categoryTitle.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -2),
            categoryTitle.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 90),
        ])
    }
}
