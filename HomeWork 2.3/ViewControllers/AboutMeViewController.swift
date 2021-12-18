//
//  AboutMeViewController.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var myPhoto: UIImageView!

    var label = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func addImageToUIImageView () {
        let myImage: UIImage = UIImage(named: "Ph-65.JPG")!
        myPhoto.image = myImage
    }
}
