//
//  SpecialsDishCollectionViewCell.swift
//  NationalFood
//
//  Created by Арген on 05.07.2021.
//

import UIKit

class SpecialsDishCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: SpecialsDishCollectionViewCell.self)
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    func setup(dish: PopularDish) {
        imageView.kf.setImage(with: dish.image.asUrl)
        namelbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formatCalories
    }
}
