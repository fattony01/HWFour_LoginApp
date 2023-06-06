//
//  ViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 06.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
//MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.autocorrectionType = .no
        userNameTF.spellCheckingType = .no
        
        passwordTF.autocorrectionType = .no
        passwordTF.spellCheckingType = .no
        passwordTF.isSecureTextEntry = true
        
    }
    
//MARK: - IBActions
    @IBAction func logInButtonDidTapped() {
        
    }
    
    @IBAction func forgotUserNameDidTapped() {
        let alert = UIAlertController(title: "Oops!", message: "Your name is User", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordDidTapped() {
        let alert = UIAlertController(title: "Oops!", message: "Your password is Password", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super .touchesBegan(touches, with: event)
    }

}

