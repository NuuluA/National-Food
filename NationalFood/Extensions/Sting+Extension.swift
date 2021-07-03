//
//  Sting+Extension.swift
//  NationalFood
//
//  Created by Арген on 03.07.2021.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
