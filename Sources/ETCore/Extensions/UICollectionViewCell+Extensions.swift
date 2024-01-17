//
//  UICollectionViewCell+Extensions.swift
//  ETCore
//
//  Created by Emrah Turan on 14.01.2024.
//

import UIKit.UICollectionViewCell

public extension UICollectionViewCell {
    static var identifier: String {
        return String(describing: self)
    }

    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
