//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Properties

class MainTabBarController: UITabBarController {

    
    let photoHelper = MGPhotoHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in
            print("handle image")
            PostService.create(for: image)
        }
        
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }

}


extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            photoHelper.presentActionSheet(from: self)
            return false
        }
        
        return true
    }
}

