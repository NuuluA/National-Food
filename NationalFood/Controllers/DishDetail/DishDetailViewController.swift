//
//  DishDetailViewController.swift
//  NationalFood
//
//  Created by Арген on 05.07.2021.
//

import UIKit

class DishDetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLb: UILabel!
    @IBOutlet weak var orderTF: UITextField!
    
    var dish: PopularDish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextDishView()
    }
    
    private func nextDishView() {
        imageView.kf.setImage(with: dish.image.asUrl)
        nameLbl.text = dish.name
        caloriesLbl.text = dish.formatCalories
        descriptionLb.text = dish.description
    }
    
    @IBAction func orderBtnAction(_ sender: UIButton) {
        
    }
    
}
