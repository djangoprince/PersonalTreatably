//
//  LoginViewController.swift
//  Treatably
//
//  Created by Safa Jemai on 05/10/2020.
//  Copyright © 2020 Treatably. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func login(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
        if(userEmailStored == userEmail)
        {
            if (userPasswordStored == userPassword)
            {
                //login is successful
                
            }
            else
            {
                //display alert msg
                displayMyAlertMessage(userMessage: "Something is incorrect");
                return;
            }
        }
        else
        { 
            //display alert msg
            displayMyAlertMessage(userMessage: "Email is incorrect");
            return;
        }
    
    }
    func displayMyAlertMessage(userMessage: String)
       {
           _ = UIAlertController(title: "Alert",message: userMessage, preferredStyle: UIAlertController.Style.alert);
       }
    
}
