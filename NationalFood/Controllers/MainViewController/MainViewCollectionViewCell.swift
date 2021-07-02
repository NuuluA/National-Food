//
//  MainViewCollectionViewCell.swift
//  NationalFood
//
//  Created by Арген on 02.07.2021.
//

import UIKit

class MainViewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(_ viewModel: MainViewModel) {
        self.imageView.image = viewModel.image
        self.titleLbl.text = viewModel.title
        self.descriptionLbl.text = viewModel.description
    }
}
