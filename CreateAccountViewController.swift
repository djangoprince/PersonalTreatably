//
//  CreateAccountViewController.swift
//  Treatably
//
//  Created by Safa Jemai on 05/10/2020.
//  Copyright © 2020 Treatably. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userFamilyNameTextField: UITextField!
    @IBOutlet weak var userGenderTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userKannitalaTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CreateAccountButtonTapped(_ sender: Any) {
        let userName = userNameTextField.text;
        let userFamilyName = userFamilyNameTextField.text;
        let userGender = userGenderTextField.text;
        let userPassword = userPasswordTextField.text;
        let userKannitala = userKannitalaTextField.text;
        let userEmail = userEmailTextField.text;
    
    //check for empty files
        if (((userEmail?.isEmpty ) != nil) || ((userPassword?.isEmpty) != nil)
            || ((userName?.isEmpty) != nil) || ((userFamilyName?.isEmpty) != nil) || ((userKannitala?.isEmpty) != nil) || ((userGender?.isEmpty) != nil))
        {
            //display alert msg
            displayMyAlertMessage(userMessage: "All fields are required");
            return;
        }
        // Save data
        UserDefaults.standard.set(userName, forKey: "userName");
        UserDefaults.standard.set(userEmail, forKey: "userFamilyName");
        UserDefaults.standard.set(userGender, forKey: "userGender");
        UserDefaults.standard.set(userKannitala, forKey: "userKannitala");
        UserDefaults.standard.set(userPassword, forKey: "userPassword");
        UserDefaults.standard.set(userEmail, forKey: "userEmail");
        UserDefaults.standard.synchronize();
        // display confirmation msg
        _ = UIAlertController(title: "Alert",message: "Registration is successful", preferredStyle: UIAlertController.Style.alert);
        // move to the next interface
        }
    
    
    func displayMyAlertMessage(userMessage: String)
    {
        _ = UIAlertController(title: "Alert",message: userMessage, preferredStyle: UIAlertController.Style.alert);
    }
   

}
