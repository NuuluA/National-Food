//
//  ViewController.swift
//  NationalFood
//
//  Created by Арген on 02.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var nextBtn: UIButton!
    
    var slideMainView: SlideMainView = SlideMainView()
    let identifierID = "MainViewCollectionViewCell"
    
    var currentPage = 0 {
        didSet {
            pageController.currentPage = currentPage
            if currentPage == slideMainView.mainViewModel.count - 1 {
                nextBtn.setTitle("Начать", for: .normal)
            } else {
                nextBtn.setTitle("Следующий", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextBtnAction(_ sender: UIButton) {
        if currentPage == slideMainView.mainViewModel.count - 1 {
            let storyboard = storyboard?.instantiateViewController(identifier: "NavigationController") as! UINavigationController
 
            //Стиль представления для контроллеров модального представления.
            storyboard.modalPresentationStyle = .fullScreen
            
            //Стиль перехода, используемый при представлении контроллера представления.
            storyboard.modalTransitionStyle = .coverVertical
            
            //perexodim na sleduyushiy ekran
            present(storyboard, animated: true, completion: nil)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slideMainView.mainViewModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifierID, for: indexPath) as? MainViewCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let slide = slideMainView.mainViewModel[indexPath.item]
        cell.setup(slide)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = collectionView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
    
}
