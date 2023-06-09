//
//  SuccessLoginViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 08.06.2023.
//

import UIKit

class SuccessLoginViewController: UIViewController {
    @IBOutlet var greetingsLabel: UILabel!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Welcome, \(userName ?? "Guest")"
    }
    
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        
    }
    
}
