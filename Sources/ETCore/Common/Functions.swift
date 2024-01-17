//
//  Functions.swift
//  ETCore
//
//  Created by Emrah Turan on 12.01.2024.
//

import Foundation

public func onMain(completion: @escaping () -> Void) {
    DispatchQueue.main.async {
        completion()
    }
}
