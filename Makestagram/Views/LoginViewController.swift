//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Shawn Miller on 7/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var loginButton: UIButton!
    // MARK: - VC Lifestyle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - IBActions
    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Login button tapped")
    }
    
    
}
