//
//  AppDetailCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 15.04.2023.
//

import UIKit

class AppDetailCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
