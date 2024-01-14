//
//  UICollectionView+Extensions.swift
//  ETCore
//
//  Created by Emrah Turan on 14.01.2024.
//

import UIKit.UICollectionView

public extension UICollectionView {
    /// collectionView.registerCell(type: xxxCollectionViewCell.self)
    func registerCell<T: UICollectionViewCell>(type: T.Type) where T: UICollectionViewCell {
        register(T.nib, forCellWithReuseIdentifier: T.identifier)
    }

    /// let cell: xxxCollectionViewCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }

        return cell
    }
}
