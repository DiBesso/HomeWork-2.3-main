//
//  AboutMeViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var mySurnameLabel: UILabel!
    @IBOutlet weak var myAgeLabel: UILabel!
    
    var user: User!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let structOfUser = User ()
        myNameLabel.text = structOfUser.name
        mySurnameLabel.text = structOfUser.surname
        myAgeLabel.text = structOfUser.age
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let factsVC = segue.destination as? FactsViewController else { return }
        factsVC.user = user
    }
    
    func addImageToUIImageView () {
        let myImage: UIImage = UIImage(named: "Ph-65.JPG")!
        myPhoto.image = myImage
    }
}

