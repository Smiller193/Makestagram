//
//  UITableView+Utility.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/16/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation

import UIKit


protocol CellIdentifiable {
    static var cellIdentifier: String { get }
}
extension UITableView {
    // ...
  
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: CellIdentifiable {
        // 2
        guard let cell = dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            // 3
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }
        
        return cell
    }
}

extension CellIdentifiable where Self: UITableViewCell {
    // 2
    static var cellIdentifier: String {
        return String(describing: self)
    }
}

// 3
extension UITableViewCell: CellIdentifiable { }
