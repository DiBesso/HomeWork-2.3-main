//
//  ViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var LogInButton: UIButton!
    @IBOutlet weak var FargotUserNameButton: UIButton!
    @IBOutlet weak var FargotPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func UNAlert() {
        let alert = UIAlertController (title: "OOOPS!!!", message: "Your User Name is Dima", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present (alert, animated: true)
    }
    
    @IBAction func PasswordAlert() {
        let alert = UIAlertController (title: "OOOPS!!!", message: "Your Password is pass", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present (alert, animated: true)
    }
    
}

