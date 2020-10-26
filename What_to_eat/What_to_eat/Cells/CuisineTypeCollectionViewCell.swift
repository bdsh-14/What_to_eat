//
//  CollectionViewCell.swift
//  What_to_eat
//
//  Created by Bidisha Biswas on 10/25/20.
//

import UIKit

class CuisineTypeCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "reuseIdentifier"
    
    var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let textLabel = UILabel(frame: .zero)
               textLabel.translatesAutoresizingMaskIntoConstraints = false
               self.contentView.addSubview(textLabel)
               NSLayoutConstraint.activate([
                   self.contentView.centerXAnchor.constraint(equalTo: textLabel.centerXAnchor),
                   self.contentView.centerYAnchor.constraint(equalTo: textLabel.centerYAnchor),
               ])
               self.textLabel = textLabel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
