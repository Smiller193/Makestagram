//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation


import UIKit

class PostHeaderCell: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func optionsButtonTapped(_ sender: Any) {
        print("options button tapped")
    }
    
    static let height: CGFloat = 54
}
