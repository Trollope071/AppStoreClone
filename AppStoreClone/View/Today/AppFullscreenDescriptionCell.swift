//
//  AppFullscreenDescription.swift
//  AppStoreClone
//
//  Created by Савва Варма on 20.04.2023.
//

import UIKit

class AppFullscreenDescriptionCell: UITableViewCell {
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        
        let attributedText = NSMutableAttributedString(string: "Lorem ipsum", attributes: [.foregroundColor: UIColor.black])
        attributedText.append(NSAttributedString(string: " dolor sit amet, consectetur adipiscing elit. Proin cursus gravida justo, eget varius neque sodales sagittis. Aenean condimentum tellus ac feugiat placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean quis eleifend nisl.", attributes: [.foregroundColor: UIColor.gray]))
        attributedText.append(NSAttributedString(string: "\n\n\nSed a quam efficitur, ", attributes: [.foregroundColor: UIColor.black]))
        attributedText.append(NSAttributedString(string: "\neleifend mi at, consequat purus. Sed ut ullamcorper ipsum. Vivamus vestibulum at massa at pellentesque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; ", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(descriptionLabel)
        descriptionLabel.fillSuperview(padding: .init(top: 0, left: 24, bottom: 0, right: 24))
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
