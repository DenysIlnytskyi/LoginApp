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
        
       title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }

 

}
