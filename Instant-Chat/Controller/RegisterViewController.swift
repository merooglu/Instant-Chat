//
//  RegisterViewController.swift
//  Instant-Chat
//
//  Created by Mehmet Eroğlu on 6.04.2020.
//  Copyright © 2020 Mehmet Eroğlu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.chatViewControllerSegue, sender: self)
                }
            }
        }
    }
    
}
