//
//  HomeViewController.swift
//  NationalFood
//
//  Created by Арген on 03.07.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [CategoryModel] = [
        .init(id: "id1", name: "Food1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Food2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Food3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Food4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Food5", image: "https://picsum.photos/100/200")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
    }
   
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(categories[indexPath.item])
        
        return cell
    }
    
}
