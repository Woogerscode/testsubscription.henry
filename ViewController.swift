//
//  ViewController.swift
//  ProjectHercules2
//
//  Created by Henry Hall on 04/12/2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 12.5
        view2.layer.cornerRadius = 12.5

        // Do any additional setup after loading the view.
        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
            let HomeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(HomeVC, animated: false)
        }
    }

    
    @IBAction func authenticateUser(_ sender: Any) {
        if txtUserName.text == "test" && txtPassword.text == "test" {
                        UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
                        let HomeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                        self.navigationController?.pushViewController(HomeVC, animated: true)
            let alert = UIAlertController(title: "Correct!", message: "You are now logged in", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            }
        if txtUserName.text != "test" && txtPassword.text != "test" {let alert = UIAlertController(title: "Incorrect!", message: "Both entrants are wrong. ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            }
        if txtUserName.text != "test" && txtPassword.text == "test" {let alert = UIAlertController(title: "Incorrect!", message: "The Username is wrong", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        }
        if txtUserName.text == "test" && txtPassword.text != "test" {let alert = UIAlertController(title: "Incorrect!", message: "The Password is wrong", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        }
    }
}
    




