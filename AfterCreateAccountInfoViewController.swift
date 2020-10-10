//
//  AfterCreateAccountInfoViewController.swift
//  Treatably
//
//  Created by Safa Jemai on 07/10/2020.
//  Copyright © 2020 Treatably. All rights reserved.
//

import UIKit

class AfterCreateAccountInfoViewController: UIViewController
{
    // radio buttons for gender
    @IBOutlet weak var btnFem: UIButton!
    @IBOutlet weak var btnMale: UIButton!
    // birthday text field
    @IBOutlet weak var BirthText: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createDatePicker()
    }
    //mark button actions
    
    @IBAction func UIbtnAction(_ sender: UIButton) {
        if sender.tag == 1
        {
            btnFem.isSelected = true
            btnMale.isSelected = false
            print ("female selected")
        }
        else if sender.tag == 2
        {
            btnMale.isSelected = true
            btnFem.isSelected = false
            print ("male selected")
        }
        
    }
    
    func createDatePicker (){
        //align the date text
        BirthText.textAlignment = .center
        
        //create a toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem( barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        //assign toolbar
        BirthText.inputAccessoryView = toolbar
        
        //assign date to toolbar
        BirthText.inputView = datePicker
        
        //date picker mode
        datePicker.datePickerMode = .date
    }
    @objc func donePressed(){
        //we need to get a good format of date
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        BirthText.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }

    //needed to store the data that i get in this page
}
