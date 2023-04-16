//
//  TodayCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 17.04.2023.
//

import UIKit

class TodayCell: UICollectionViewCell {
    
    let imageView = UIImageView(image: UIImage(named: "bird"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        
        addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.centerInSuperview(size: .init(width: 200, height: 200))
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
