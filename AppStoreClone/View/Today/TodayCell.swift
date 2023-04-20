//
//  TodayCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 17.04.2023.
//

import UIKit

class TodayCell: UICollectionViewCell {
    
    var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
            imageView.image = todayItem.image
            descriptionLabel.text = todayItem.description
            backgroundColor = todayItem.backgroundColor
        }
    }
    
    let categoryLabel = UILabel(text: "Lorem ipsum", font: .boldSystemFont(ofSize: 20))
    let titleLabel = UILabel(text: "In faucibus dui", font: .boldSystemFont(ofSize: 28))
    let descriptionLabel = UILabel(text: "ui eu rhoncus tincidunt. Sed vestibulum nisi eget lorem porttitor, nec pulvinar dui efficitur. Sed eu ligula sem.", font: .systemFont(ofSize: 16), numberOfLines: 3)
    
    let imageView = UIImageView(image: UIImage(named: "bird"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        clipsToBounds = true
        backgroundColor = .white
        layer.cornerRadius = 16
        
        imageView.contentMode = .scaleAspectFill
        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 240, height: 240))
        let stackView = VerticalStackView(arrangedSubviews: [
            categoryLabel, titleLabel, imageContainerView, descriptionLabel
        ], spacing: 8)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
