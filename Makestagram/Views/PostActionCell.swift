//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit

class PostActionCell: UITableViewCell {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
    }
    
    static let height: CGFloat = 46
    
}
