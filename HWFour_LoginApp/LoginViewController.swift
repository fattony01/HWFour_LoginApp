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
        let enteredUserName = userNameTF.text ?? ""
        let enteredPassword = passwordTF.text ?? ""
        
        if enteredUserName == "User" && enteredPassword == "Password" {
            performSegue(withIdentifier: "LogIn", sender: nil)
        } else {
            showAlert(title: "Oops!🤯", message: "Wrong login or password")
        }
    }
    
    
    
    @IBAction func forgotUserNameDidTapped() {
        showAlert(title: "Oops!🤯", message: "Your name is User🫡")
    }
    
    @IBAction func forgotPasswordDidTapped() {
        showAlert(title: "Oops!🤯", message: "Your password is Password🫡")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LogIn" {
            if let destinationVC = segue.destination as? SuccessLoginViewController {
                // Add user name value for second screen
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super .touchesBegan(touches, with: event)
    }
   

}

private extension LoginViewController{
    @IBAction func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

    
