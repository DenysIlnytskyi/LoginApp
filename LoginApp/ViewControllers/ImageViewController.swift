//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Денис Ільницький on 07/08/2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: user.person.image)
        
       
    }
    override func viewWillLayoutSubviews() {
        imageView.layer.cornerRadius = imageView.frame.height / 2
       
    }

}
