//
//  AppsGroupCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 23.03.2023.
//

import UIKit


class AppsGroupCell: UICollectionViewCell {
    
    
    let titleLabel = UILabel(text: "App Section", font: .boldSystemFont(ofSize: 24))
    
    let horizontalController = AppsHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0))
        
        addSubview(horizontalController.view)
        horizontalController.view.anchor(top: titleLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        horizontalController.view.backgroundColor = .blue
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
