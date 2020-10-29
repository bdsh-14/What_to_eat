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
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        label.font = UIFont(name: "SF Pro Text", size: 20)
        setupCollectionView()
    }
    
    func setupCollectionView() {
        cuisineCollectionView.dataSource = self
        cuisineCollectionView.register(UINib(nibName: "SelectorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: SelectorCollectionViewCell.reuseIdentifier)
        
        
        let imageView: UIImageView = {
            let view = UIImageView()
            view.image = UIImage(named: "CuisineTypebg")
            view.contentMode = .scaleAspectFill
            return view
        }()
        
        cuisineCollectionView.backgroundView = imageView
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
        cuisineCell.selectorLabel.text = cuisineType[indexPath.item]
        return cuisineCell
    }
}

extension CuisineTypeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = MenuListViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}


