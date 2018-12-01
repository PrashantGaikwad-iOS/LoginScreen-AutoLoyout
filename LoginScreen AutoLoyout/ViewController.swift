//
//  ViewController.swift
//  LoginScreen AutoLoyout
//
//  Created by Prashant G on 11/30/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    var backgroundImage = UIImageView()
    @IBOutlet var logoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        logoImageView.layer.cornerRadius = logoImageView.frame.width/2
        logoImageView.layer.masksToBounds = true
        setupBackgroundImage()
    }


    func setupBackgroundImage() {
        view.addSubview(backgroundImage)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        backgroundImage.image = UIImage(named: "ocean")
        view.sendSubviewToBack(backgroundImage)
    }
}

