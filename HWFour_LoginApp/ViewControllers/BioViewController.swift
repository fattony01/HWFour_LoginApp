//
//  BioViewController.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 15.06.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func translationButton() {
        showAlert(title: "About me",
                  message: "You already know my name, but I'll tell you a little more about myself. I am from Ukraine, now I live in Poland. I am an expert in car care. Back in Ukraine, we planned to open our own detailing studio, but circumstances forced us to leave our country and go to Poland. Now I work for a large company Soft99 Europe, which deals with everything related to car care. We sell our products throughout Europe. I work as a detailer. I really love my field and everything related to the car, but, frankly, I'm tired of cyclical manual work and tired of being tied to one place. Therefore, I decided to change the field of activity. Back in my university years, I taught web development, but now I have chosen ios development, as I am a fan of Apple technology.")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let linksVC = segue.destination as? LinksViewController else { return }
        linksVC.telegram = person.tgLink
        linksVC.inst = person.instLink
        
    }
}

private extension BioViewController{
    func showAlert(title: String, message: String, textField : UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
