//
//  HeaderView.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 29.02.2024.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.heavy)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerLabel)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureHeader(sectionName: String) {
        headerLabel.text = sectionName
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            headerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
        ])
    }
}
