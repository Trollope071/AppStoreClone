//
//  PreviewCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 16.04.2023.
//

import UIKit

class AppPreviewCell: UICollectionViewCell {
    
    let horizontalController = PreviewScreenshotsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(horizontalController.view)
        horizontalController.view.fillSuperview()
        
    }
    required init?(coder aCoder: NSCoder) {
        fatalError()
    }
}
