//
//  PopularCollectionViewCell.swift
//  NationalFood
//
//  Created by Арген on 04.07.2021.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: PopularCollectionViewCell.self)
    
    @IBOutlet weak var popularNameLbl: UILabel!
    @IBOutlet weak var popularImageView: UIImageView!
    @IBOutlet weak var popularCaloriesLbl: UILabel!
    @IBOutlet weak var popularDescriptionLbl: UILabel!
    
    func setup(_ dish: PopularDish) {
        self.popularNameLbl.text = dish.name
        self.popularImageView.kf.setImage(with: dish.image.asUrl)
        self.popularCaloriesLbl.text = dish.formatCalories
        self.popularDescriptionLbl.text = dish.description
    }
}
