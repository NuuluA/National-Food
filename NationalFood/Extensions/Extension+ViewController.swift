//
//  Extension+ViewController.swift
//  NationalFood
//
//  Created by Арген on 02.07.2021.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
