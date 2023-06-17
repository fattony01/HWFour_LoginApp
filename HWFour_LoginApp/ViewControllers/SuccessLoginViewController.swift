//
//  SuccessLoginViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 08.06.2023.
//

import UIKit

final class SuccessLoginViewController: UIViewController {
    @IBOutlet var greetingsLabel: UILabel!
    var userName: String!
    
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
        
        greetingsLabel.text = "Welcome, \(userName ?? "Guest")"
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
