//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Kevin J on 08-02-2022
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    // navigate to ChatVC
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                    
                }
                
            }
        }
        
    }
    
}
