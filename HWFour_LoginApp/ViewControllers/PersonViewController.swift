//
//  PersonViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 15.06.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var myImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var person: Person!
    
    private let topColor = UIColor(red: 210/255,
                                   green: 109/255,
                                   blue: 128/255,
                                   alpha: 1)
    private let bottomColor = UIColor(red: 107/255,
                                      green: 148/255,
                                      blue: 230/255,
                                      alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(from: topColor, to: bottomColor)
        
        
        myImage.layer.cornerRadius = 125
        
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        ageLabel.text = String(person.age)
        companyLabel.text = person.company
        positionLabel.text = person.position
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioViewController = segue.destination as? BioViewController else { return }
        bioViewController.view.addVerticalGradientLayer(from: topColor, to: bottomColor)
        bioViewController.descriptionLabel.text = person.description
        bioViewController.person = person
    }
}

private extension UIView {
    func addVerticalGradientLayer(from startColor: UIColor, to endColor: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.startPoint = CGPoint(x: 0, y: 0) // Начало градиента
        gradientLayer.endPoint = CGPoint(x: 0, y: 1) // Конец градиента
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor] // Цвета градиента
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
