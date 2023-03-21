//
//  SearchResultCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 21.03.2023.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "App Name"
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "App Category"
        return label
    }()
    
    let downloadsLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Downloads"
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 16
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        return button
    }()
    
    let getPictures: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        iv.widthAnchor.constraint(equalToConstant: 80)
        iv.heightAnchor.constraint(equalToConstant: 250)
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        let labelStackView = UIStackView(arrangedSubviews: [
            nameLabel, categoryLabel, downloadsLabel
        ])
        labelStackView.axis = .vertical
        
        let stackView = UIStackView(arrangedSubviews: [
            imageView, labelStackView, getButton
        ])
        stackView.spacing = 12
        stackView.alignment = .center
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
