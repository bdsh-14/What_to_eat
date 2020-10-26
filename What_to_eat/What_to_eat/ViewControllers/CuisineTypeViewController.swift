//
//  CuisineTypeController.swift
//  What_to_eat
//
//  Created by Bidisha Biswas on 10/25/20.
//

import UIKit

class CuisineTypeViewController: UIViewController {
    
    let cuisineType = ["Indian", "Italian", "Chinese"]
    
    @IBOutlet weak var cuisineCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        cuisineCollectionView.register(CuisineTypeCollectionViewCell.self, forCellWithReuseIdentifier: CuisineTypeCollectionViewCell.reuseIdentifier)

    }
}

extension CuisineTypeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cuisineType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CuisineTypeCollectionViewCell.reuseIdentifier, for: indexPath) as! CuisineTypeCollectionViewCell
        let item = cuisineType[indexPath.row]
        cell.textLabel.text = item
        return cell
    }
}
