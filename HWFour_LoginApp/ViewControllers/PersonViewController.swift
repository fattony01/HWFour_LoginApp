//
//  PersonViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 15.06.2023.
//

import UIKit

class PersonViewController: UIViewController {
    
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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioViewController = segue.destination as? BioViewController else { return }
        bioViewController.view.addVerticalGradientLayer(from: topColor, to: bottomColor)
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
