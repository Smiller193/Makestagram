//
//  FindFriendsCell.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/14/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit


protocol FindFriendsCellDelegate: class {
    func didTapFollowButton(_ followButton: UIButton, on cell: FindFriendsCell)
}


class FindFriendsCell: UITableViewCell {
    weak var delegate: FindFriendsCellDelegate?
    
    // MARK: - Properties
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var followButton: UIButton!
    
     // MARK: - Cell Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        followButton.layer.borderColor = UIColor.lightGray.cgColor
        followButton.layer.borderWidth = 1
        followButton.layer.cornerRadius = 6
        followButton.clipsToBounds = true
        
        followButton.setTitle("Follow", for: .normal)
        followButton.setTitle("Following", for: .selected)
        
    }
      // MARK: - IBActions
    @IBAction func followButtonTapped(_ sender: UIButton) {
        print("follow button tapped")
         delegate?.didTapFollowButton(sender, on: self)
    }

    
}
