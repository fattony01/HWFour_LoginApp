//
//  LinksViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 17.06.2023.
//

import UIKit

class LinksViewController: UIViewController {
    
    @IBOutlet var telegramLabel: UILabel!
    @IBOutlet var instLabel: UILabel!
    
    var telegram: String!
    var inst: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        telegramLabel.text = telegram
        instLabel.text = inst
    }
    
    @IBAction func closeButtonTapped() {
        dismiss(animated: true)
    }
}
