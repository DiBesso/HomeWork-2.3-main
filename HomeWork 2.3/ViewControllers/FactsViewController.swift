//
//  FactsViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 18.12.2021.
//

import UIKit

class FactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func FactNumberOneAlert() {
        let facts = Facts ()
        let alert = UIAlertController (title: "Факт 1:", message: facts.factNumberOne, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present (alert, animated: true)
    }
    
    @IBAction func FactNumberTwoAlert() {
        let facts = Facts ()
        let alert = UIAlertController (title: "Факт 2:", message: facts.factNumberTwo, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present (alert, animated: true)
    }
    
    @IBAction func FactNumberThreeAlert() {
        let facts = Facts ()
        let alert = UIAlertController (title: "Факт 3:", message: facts.factNumberThree, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present (alert, animated: true)
    }
    
    @IBAction func FactNumberFourAlert() {
        let facts = Facts ()
        let alert = UIAlertController (title: "Факт 4:", message: facts.factNumberFour, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present (alert, animated: true)
    }
}
