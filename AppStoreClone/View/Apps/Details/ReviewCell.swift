//
//  ReviewCell.swift
//  AppStoreClone
//
//  Created by Савва Варма on 16.04.2023.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Review Title", font: .boldSystemFont(ofSize: 16))
    let authorLabel = UILabel(text: "Author Title", font: .boldSystemFont(ofSize: 10))
    let bodyLabel = UILabel(text: "Review Text\nReview Text\nReview Text", font: .systemFont(ofSize: 14), numberOfLines: 0)
    let starsStackView: UIStackView = {
        var arrangedSubviews = [UIView]()
        (0..<5).forEach { _ in
            let imageView = UIImageView(image: UIImage(named: "star.fill"))
            imageView.constrainWidth(constant: 24)
            imageView.constrainHeight(constant: 24)
            arrangedSubviews.append(imageView)
        }
        arrangedSubviews.append(UIView())
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 0.95, green: 0.94, blue: 0.98, alpha: 1.00)
        layer.cornerRadius = 16
        clipsToBounds = true
        
        let stackView = VerticalStackView(arrangedSubviews: [
                UIStackView(arrangedSubviews: [
                    titleLabel, authorLabel
                ]),
                starsStackView,
                bodyLabel
        ], spacing: 8)
        
        titleLabel.setContentCompressionResistancePriority(.init(rawValue: 0), for: .horizontal)
        authorLabel.textAlignment = .right
        addSubview(stackView)
        stackView.fillSuperview(padding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
