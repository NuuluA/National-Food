//
//  UIViewController+Extension.swift
//  NationalFood
//
//  Created by Арген on 05.07.2021.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: identifier) as! Self
        return controller
    }
}
