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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        
        viewControllers.forEach {
            if let greetinVC = $0 as? GreetingViewController {
                greetinVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let moreInfoVC = navigationVC.topViewController as! MoreInfoViewController
                moreInfoVC.user = user
            }
        }
    }
    
    
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
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        logInTextField.text = ""
        passwordTextField.text = ""
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
