//
//  HomeViewController.swift
//  NationalFood
//
//  Created by Арген on 03.07.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    var categories: [CategoryModel] = [
        .init(id: "id1", name: "Food1", image: "https://silkroadresearch.files.wordpress.com/2018/06/beshbarmak.jpg?w=825"),
        .init(id: "id1", name: "Food2", image: "https://silkroadresearch.files.wordpress.com/2018/06/beshbarmak.jpg?w=825"),
        .init(id: "id1", name: "Food3", image: "https://i.pinimg.com/originals/b5/1b/14/b51b146af14a1c304cdc049f3cdeb495.jpg"),
        .init(id: "id1", name: "Food4", image: "https://i.pinimg.com/236x/4b/53/75/4b5375e488499185cd9281b5d60f1e86--five-fingers-central-asia.jpg"),
        .init(id: "id1", name: "Food5", image: "https://cacdn.araratour.com/file_manager/images/Kyrgyzstan/Articles/National%20Cuisine/Kyrgyz%20Shorpo.jpg")
    ]
    
    var popularDish: [PopularDish] = [
        .init(id: "id1", name: "Beshbarmak", description: "Beshbarmak. Beshbarmak is the Kyrgyz national dish, although it is also common in Kazakhstan and in Xinjiang (where it is called narin). It consists of horse meat (or mutton/beef) boiled in its own broth for several hours and served over homemade noodles sprinkled with parsley.", image: "https://i.pinimg.com/236x/4b/53/75/4b5375e488499185cd9281b5d60f1e86--five-fingers-central-asia.jpg", calories: 556),
        .init(id: "id1", name: "Manty", description: "Manty can be found in all cuisines of Central Asian countries. They are prepared almost in the same way. Kyrgyz manty is prepared of chopped lamb or beef. The stuffed dough is cooked on steam and served with vinegar as a seasoning. Another popular stuffed dough dish is samsa that is popular far beyond the region. Moreover, it is a popular street food in Kyrgyzstan. Small triangle dough is usually stuffed with chopped meat and baked in tandyr. Instead of meat potatoes and pumpkin is also used.", image: "https://i.pinimg.com/originals/b5/1b/14/b51b146af14a1c304cdc049f3cdeb495.jpg", calories: 55),
        .init(id: "id1", name: "Shorpo", description: "From soups, the most popular one is Kyrgyz shorpo. Fat meat broth can be mixed with different vegetables and spices (the recipe changes from region to region) but the classy shorpo is a meat broth with pieces of lamb, carrots, potatoes and greens. Ashlyann-Fu is a specific cold soup prepared from noodles, starch and sour vegetable broth. It is served with small potato patty.", image: "https://cacdn.araratour.com/file_manager/images/Kyrgyzstan/Articles/National%20Cuisine/Kyrgyz%20Shorpo.jpg", calories: 236),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionView.register(UINib(nibName: PopularCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopularCollectionViewCell.identifier)
    }
   
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return popularDish.count
        default: return 0
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(categories[indexPath.item])
            return cell
            
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.identifier, for: indexPath) as! PopularCollectionViewCell
            cell.setup(popularDish[indexPath.item])
            return cell
        default: return UICollectionViewCell()
            
        }
        
    }

}
