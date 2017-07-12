//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FirebaseDatabase


typealias FIRUser = FirebaseAuth.User

class LoginViewController: UIViewController, FUIAuthDelegate {
    
    // MARK: - Properties
    @IBOutlet weak var loginButton: UIButton!
    // MARK: - VC Lifestyle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - IBActions
    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Login button tapped")
        // 1
        guard let authUI = FUIAuth.defaultAuthUI()
            else { return }
        // 2
        authUI.delegate = self
        // 3
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
    
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            
            
            
            
            return
        }
        
        
        guard let user = user
            
            else {return}
        UserService.show(forUID: user.uid) { (user) in
            if let user = user {
                // handle existing user
                User.setCurrent(user, writeToUserDefaults: true)
                
                let initialViewController = UIStoryboard.initialViewController(for: .main)
                self.view.window?.rootViewController = initialViewController
                self.view.window?.makeKeyAndVisible()
            } else {
                // handle new user
                self.performSegue(withIdentifier: Constants.Segue.toCreateUsername, sender: self)
            }
            print("Handle user signup/login")
        }
    
    }
    
    
    
}







