//
//  CuisineTypeController.swift
//  What_to_eat
//
//  Created by Bidisha Biswas on 10/25/20.
//

import UIKit

class CuisineTypeViewController: UIViewController {
    
    let cuisineType: [String] = ["Indian", "Italian", "Chinese", "American", "Mexican"]
    
    @IBOutlet weak var cuisineCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        cuisineCollectionView.dataSource = self
        cuisineCollectionView.register(UINib(nibName: "SelectorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: SelectorCollectionViewCell.reuseIdentifier)

    }
}

extension CuisineTypeViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cuisineType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cuisineCell = collectionView.dequeueReusableCell(withReuseIdentifier: SelectorCollectionViewCell.reuseIdentifier, for: indexPath) as! SelectorCollectionViewCell
        let item = cuisineType[indexPath.item]
        print(item)
        cuisineCell.selectorLabel.text = item
        return cuisineCell
    }
}

