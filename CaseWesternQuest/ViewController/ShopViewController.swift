//
//  ShopViewController.swift
//  CaseWesternQuest
//
//  Created by Samantha Frankum on 4/9/19.
//  Copyright © 2019 Samantha Frankum. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    // MARK: - Properties
    var shop: Store!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = shop?.name
    }
}

// MARK: - UICollectionViewDataSource
extension ShopViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shop.inventory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        let imageView = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as! UILabel
        
        let item = shop.inventory[indexPath.row]
        imageView.image = Game.shared.image(for: item)
        
        let price = item.cost
        label.text = "💰\(price)"
        
        cell.layer.cornerRadius = 8
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension ShopViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = shop.inventory[indexPath.row]
        _ = Game.shared.purchaseItem(item: item)
        _ = navigationController?.popViewController(animated: true)
    }
}
