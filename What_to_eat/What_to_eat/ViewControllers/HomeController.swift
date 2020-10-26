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
    @IBOutlet weak var getStartedButton: UIButton!

  //  @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        setup()
        
    }
    
    func setup() {
        guard let image = UIImage(named: "welcomeImg") else { return }
        backgroundImageView.image = image
        view.addSubview(backgroundImageView)
        view.addSubview(getStartedButton)
        view.bringSubviewToFront(getStartedButton)
        getStartedButton.isOpaque = false
        getStartedButton.setTitle("Get Started", for: .normal)
        getStartedButton.titleLabel?.sizeToFit()
        getStartedButton.titleLabel?.tintColor = .systemGray5
        getStartedButton.titleLabel?.textAlignment = .center
        getStartedButton.layer.cornerRadius = 12
        getStartedButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        getStartedButton.backgroundColor = .systemGreen
    }
    
    @IBAction func getStartedClicked(_ sender: Any) {
        print("button tapped")
        performSegue(withIdentifier: "getStarted_to_cuisineType", sender: self)
    }
    
}
