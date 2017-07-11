//
//  AppDelegate.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        // 1
        let storyboard = UIStoryboard(name: "Login", bundle: .main)
        
        // 2
        if let initialViewController = storyboard.instantiateInitialViewController() {
            // 3
            window?.rootViewController = initialViewController
            // 4
            window?.makeKeyAndVisible()
        }
        
        return true
    }
}
