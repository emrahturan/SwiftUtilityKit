//
//  UITableViewCell+Extensions.swift
//  SwiftUtilityKit
//
//  Created by Emrah Turan on 14.01.2024.
//

import UIKit.UITableViewCell

public extension UITableViewCell {
    static var identifier: String {
        return String(describing: self)
    }

    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
