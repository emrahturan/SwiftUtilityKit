//
//  UITableView+Extensions.swift
//  ETCore
//
//  Created by Emrah Turan on 14.01.2024.
//

import UIKit.UITableView

public extension UITableView {
    /// tableView.registerCell(type: xxxTableViewCell.self)
    func registerCell<T: UITableViewCell>(type: T.Type) where T: UITableViewCell {
        register(T.nib, forCellReuseIdentifier: T.identifier)
    }

    /// let cell: xxxTableViewViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath,
                                                 cellSelectionStlye: UITableViewCell.SelectionStyle = .none) -> T where T: UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }

        cell.selectionStyle = cellSelectionStlye

        return cell
    }
}
