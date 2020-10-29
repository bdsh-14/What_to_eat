//
//  SelectorCollectionViewCell.swift
//  What_to_eat
//
//  Created by Bidisha Biswas on 10/29/20.
//

import UIKit

class SelectorCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = "selectorCell"
    
    @IBOutlet weak var selectorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectorLabel.text = "Hello"
        // Initialization code
    }

}
