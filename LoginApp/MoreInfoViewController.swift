//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Денис Ільницький on 07/08/2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = user.person.fullName
    }
    

 

}
