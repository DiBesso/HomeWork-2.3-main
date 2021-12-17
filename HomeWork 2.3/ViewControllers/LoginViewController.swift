//
//  ViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var LogInButton: UIButton!
    @IBOutlet weak var FargotUserNameButton: UIButton!
    @IBOutlet weak var FargotPassButton: UIButton!
    
    private let user = "Dima"
    private let password = "pass"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers!
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcome = user
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.label = user
            }
        }
    }
    

    @IBAction func logInAction() {
        
        if userNameText.text != user || passwordText.text != password {
            showAlert(
                title: "Invalid User Name or Password",
                message: "Please, enter correct User Name and Password",
                textField: passwordText
            )
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameText.text = ""
        passwordText.text = ""
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

// MARK: - Private Methods

extension LoginViewController {
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

// MARK: - Alert Controller
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameText {
            passwordText.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
