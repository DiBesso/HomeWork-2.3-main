//
//  File.swift
//  HomeWork 2.3
//
//  Created by Дмитрий Бессонов on 18.12.2021.
//

import UIKit

struct User {
    let name: String
    let password: String
    let surname: String
    let age: Int
    let person: [Facts]
}

struct Facts {
    let numberOfFact: NumbersOfFact
}

enum NumbersOfFact: String {
    case one = "Я родился и живу в городе - Новосибирск"
    case two = "Я работаю в компании Nike"
    case three = "Я учусь новой професси - iOS-разработчик"
    case four = "Мне тяжело даются домашки, но я разбирусь и стану успешным программистом!"
    
}

func NumberOneFactAlert () {
    let alert = UIAlertController (title: "Факт 1:", message: "Я родился и живу в городе - Новосибирск", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
    present (alert, animated: true)
    
}
