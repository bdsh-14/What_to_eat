//
//  LoginViewController.swift
//  What_to_eat
//
//  Created by Bidisha Biswas on 10/22/20.
//

import UIKit

class HomeController: UIViewController {
    
  //  @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!

  //  @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    func setup() {
        guard let image = UIImage(named: "welcomeImg") else { return }
        backgroundImageView.image = image
        view.addSubview(backgroundImageView)
    }
}
