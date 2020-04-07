//
//  LoginViewController.swift
//  Instant-Chat
//
//  Created by Mehmet Eroğlu on 6.04.2020.
//  Copyright © 2020 Mehmet Eroğlu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
              guard let self = self else { return }
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.chatViewControllerSegue, sender: self)
                }
            }
        }
    }
    
}
