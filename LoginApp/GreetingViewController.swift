//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Денис Ільницький on 07/08/2022.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Hello, \(user.person.name)"
        
    }
    

    

}
