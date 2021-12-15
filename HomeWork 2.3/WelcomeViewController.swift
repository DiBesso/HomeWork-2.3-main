//
//  WelcomeViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
    
    @IBAction func LogOutAction() {
        dismiss(animated: true)
    }
   
}
