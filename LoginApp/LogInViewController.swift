//
//  ViewController.swift
//  LoginApp
//
//  Created by Денис Ільницький on 07/08/2022.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var logInTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = User.getUser()
    

    
    @IBAction func logInButtonPressed() {
        if logInTextField.text != user.login || passwordTextField.text != user.password {
            showAlert(with: "Invalid login or password", and: "Please enter correct login and password")
            passwordTextField.text = ""
        }
       
    }
    
    @IBAction func forgotLoginButtonPressed() {
        showAlert(with: "Oooops!", and: "Your login is ''user'' 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oooops!", and: "Your password is ''password'' 😉")
    }
}

extension LogInViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
