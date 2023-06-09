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
    
    private let user = "User"
    private let password = "Password"
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.autocorrectionType = .no
        userNameTF.spellCheckingType = .no
        
        passwordTF.autocorrectionType = .no
        passwordTF.spellCheckingType = .no
        passwordTF.isSecureTextEntry = true
    }
    
    //MARK: - Overrides Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let successLoginVC = segue.destination as? SuccessLoginViewController else { return }
        successLoginVC.userName = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBActions
    @IBAction func logInTapped(_ sender: UIButton) {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(title: "Oops!🤯", message: "Wrong login or password", textField: passwordTF)
            return
        }
    }
    
    @IBAction func forgotUserNameDidTapped() {
        showAlert(title: "Oops!🤯", message: "Your name is \(user)🫡")
    }
    
    @IBAction func forgotPasswordDidTapped() {
        showAlert(title: "Oops!🤯", message: "Your password is \(password)🫡")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
//MARK: - Extensions
private extension LoginViewController{
    func showAlert(title: String, message: String, textField : UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}


