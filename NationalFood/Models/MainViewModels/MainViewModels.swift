//
//  MainViewModels.swift
//  NationalFood
//
//  Created by Арген on 02.07.2021.
//

import UIKit

struct MainViewModel {
    let title: String
    let description: String
    let image: UIImage
}

class SlideMainView {
    var mainViewModel = [MainViewModel]()
    
    init() {
        setupModel()
    }
    
    func setupModel() {
        let slide1 = MainViewModel(title: "Вкусные блюдa", description: "Испытайте разгообразие удивительных блюд разных культур со всего мира.", image: UIImage(named: "slide2")!)
        let slide2 = MainViewModel(title: "Повар мирового класса", description: "Наши блюда готовят только лучшие.", image: UIImage(named: "slide1")!)
        let slide3 = MainViewModel(title: "Быстрая доставка", description: "Ваши заказы будут доставлены мгновенно независимо от вашего местоположения по всему миру.", image: UIImage(named: "slide3")!)
        self.mainViewModel = [slide1, slide2, slide3]
    }
}
