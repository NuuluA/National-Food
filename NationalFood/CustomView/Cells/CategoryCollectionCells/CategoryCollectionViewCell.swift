//
//  CategoryCollectionViewCell.swift
//  NationalFood
//
//  Created by Арген on 03.07.2021.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func setup(_ category: CategoryModel) {
        self.categoryImage.kf.setImage(with: category.image.asUrl)
        self.categoryTitle.text = category.name
    }

}
