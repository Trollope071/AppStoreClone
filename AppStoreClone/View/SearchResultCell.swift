//
//  SearchResultCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 21.03.2023.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    let appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 72).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 72).isActive = true
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
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
    
    let ratingsLabel: UILabel = {
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
    
    lazy var screenshot1ImageView = self.createScreenshotImageView()
    lazy var screenshot2ImageView = self.createScreenshotImageView()
    lazy var screenshot3ImageView = self.createScreenshotImageView()
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        let labelStackView = VerticalStackView(arrangedSubviews: [
            nameLabel, categoryLabel, ratingsLabel
        ])
        
        let infoTopStackView = UIStackView(arrangedSubviews: [
            appIconImageView, labelStackView, getButton
        ])
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        let screenshotStackView = UIStackView(arrangedSubviews: [
            screenshot1ImageView, screenshot2ImageView, screenshot3ImageView
        ])
        screenshotStackView.spacing = 12
        screenshotStackView.distribution = .fillEqually
        
        let overallStackView = VerticalStackView(arrangedSubviews: [
            infoTopStackView, screenshotStackView
        ], spacing: 16)
        overallStackView.axis = .vertical
        addSubview(overallStackView)
        
        
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        overallStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        overallStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        overallStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        overallStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
