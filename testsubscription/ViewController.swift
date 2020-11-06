//
//  ViewController.swift
//  testsubscription
//
//  Created by Henry Hall on 23/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let usernames = ["username1", "username2", "username3"]
    let passwords = ["password1", "password2", "password3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func Login() {
        passwordTF.resignFirstResponder()
        
        if (usernameTF.text!.count) < 6 || (passwordTF.text!.count) < 6 {
            
            let alert = UIAlertController(title: "Sorry", message: "Please Check you have the right login details", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true)
        }
        
        else if usernameTF.text == usernames[0] && passwordTF.text == passwords[0] {
            print("success")
        }
        else if usernameTF.text == usernames[1] && passwordTF.text == passwords[1] {
            print("success")
        }
        else if usernameTF.text == usernames[2] && passwordTF.text == passwords[2] {
            print("success")
        }
        else {
            let alert = UIAlertController(title: "Incorrect", message: "Incorrect Username or Password! Please try again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true)
        }
        
    }
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if textField == usernameTF {
            passwordTF.becomeFirstResponder()
        }
        else if textField == passwordTF {
            Login()
        }

        return true
    }
}

