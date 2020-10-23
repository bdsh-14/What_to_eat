//
//  LoginViewController.swift
//  What_to_eat
//
//  Created by Bidisha Biswas on 10/22/20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "login_bg_img")!)
        
    }
}
