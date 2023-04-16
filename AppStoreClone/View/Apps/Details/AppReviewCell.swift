//
//  AppReviewCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 16.04.2023.
//

import UIKit

class AppReviewCell: UICollectionViewCell {
    
    let reviewsController = ReviewsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(reviewsController.view)
        reviewsController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
