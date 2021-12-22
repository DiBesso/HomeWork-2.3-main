//
//  FactsViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 18.12.2021.
//

import UIKit

class FactsViewController: UIViewController {

    var user: User!
    
    @IBAction func FactNumberOneAlert() {
        showAlertController(
            tittle: user.facts.numberOfFactOne,
            fact: user.facts.factNumberOne
        )
     
    }
    
    @IBAction func FactNumberTwoAlert() {
        showAlertController(
            tittle: user.facts.numberOfFactTwo,
            fact: user.facts.factNumberTwo
        )
      
    }
    
    @IBAction func FactNumberThreeAlert() {
        showAlertController(
            tittle: user.facts.numberOfFactThree,
            fact: user.facts.factNumberThree
        )
       
    }
    
    @IBAction func FactNumberFourAlert() {
        showAlertController(
            tittle: user.facts.numberOfFactFour,
            fact: user.facts.factNumberFour
        )
       
    }
    private func showAlertController (tittle: String, fact: String) {
        let alert = UIAlertController (title: tittle, message: fact, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        
        present(alert, animated: true)
    }
}
