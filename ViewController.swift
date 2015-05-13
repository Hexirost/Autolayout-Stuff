//
//  ViewController.swift
//  Autolayout
//
//  Created by Jeffrey Lin on 5/12/15.
//  Copyright (c) 2015 Jeffrey Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }
    
    var secure: Bool = false { didSet { updateUI()} }
    
    private func updateUI(){
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }
    
    @IBAction func toogleSecurity(sender: UIButton) {
        secure = !secure
    }
    /*@IBAction func toggleSecurity() {
        secure = !secure
    }*/
}

