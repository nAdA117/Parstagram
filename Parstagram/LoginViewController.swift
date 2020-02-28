//
//  LoginViewController.swift
//  Parstagram
//
//  Created by MITCHELL CZAJA on 2/27/20.
//  Copyright © 2020 MITCHELL CZAJA. All rights reserved.
//

import UIKit
import Parse
class LoginViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        func myMethod() {
            let user = PFUser()
            user.username = usernameField.text
            user.password = passwordField.text
            user.signUpInBackground { (success, error) in
                if error != nil {
                    self.performSegue(withIdentifier: "loginSegue", sender: nil)
                } else {
                    print("Error: \(error?.localizedDescription)")
                }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
