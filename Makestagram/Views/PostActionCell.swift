//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit


protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}


class PostActionCell: UITableViewCell {
    
        // MARK: - Properties
     weak var delegate: PostActionCellDelegate?
    
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
         delegate?.didTapLikeButton(sender, on: self)
    }
    
    static let height: CGFloat = 46
    
}
