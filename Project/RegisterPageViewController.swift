//
//  RegisterPageViewController.swift
//  Signin
//
//  Created by Wilson Alonge on 24/06/2019.
//  Copyright © 2019 Wilson Alonge. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextFile: UITextField!
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextFile.text;
        
        // Check Empty Field
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword != nil))
        {
            // Display Alert Message
            displayMyAlertMessage(userMessage: "All fields are required");
            
            return;
        }
        
        // Check Passwords match
        if (userPassword != userRepeatPassword)
        {
            displayMyAlertMessage(userMessage: "Password does not match")

            
            return;
        }
        
        // Save data
        UserDefaults.standard.set(userEmail, forKey: "userEmail");
        UserDefaults.standard.set(userEmail, forKey: "userPassword")
        UserDefaults.standard.synchronize();
        
        // Display message with confirmation
        var myAlert = UIAlertController(title:"Alert", message: "Registration is successful, Thank you!", preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)  {
            action in self.dismiss(animated: true, completion: nil)
            
        
        }
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(title:"Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
    }

}

