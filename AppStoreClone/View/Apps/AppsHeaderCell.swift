//
//  AppHeaderCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 23.03.2023.
//

import UIKit

class AppsHeaderCell : UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Company Name", font: .boldSystemFont(ofSize: 12))
    let titleLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .systemFont(ofSize: 24))
    
    let imageView = UIImageView(cornerRadius: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        imageView.backgroundColor = .purple
        titleLabel.numberOfLines = 2
        companyLabel.textColor = .blue
        
        let stackView = VerticalStackView(arrangedSubviews: [companyLabel, titleLabel, imageView], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
