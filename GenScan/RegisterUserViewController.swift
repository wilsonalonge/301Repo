//
//  RegisterUserViewController.swift
//  GenScan
//
//  Created by Obiora Okoye-Nelson on 29/06/2019.
//  Copyright © 2019 Wilson Alonge. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    //creating parameters for the post request
    let parameters: Parameters=[
        "username":textFieldUsername.text!,
        "password":textFieldPassword.text!,
        "name":textFieldName.text!,
        "email":textFieldEmail.text!,
        "phone":textFieldPhone.text!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonRegister(_ sender: Any) {
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        print("Cancel button tapped")
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        print("Sign up button tapped")
        
        //Validate fields to make sure they are not empty
        if
            (userNameTextField.text?.isEmpty)! ||
                (passwordTextField.text?.isEmpty)! ||
            (emailAddressTextField.text?.isEmpty)! || (nameTextField.text?.isEmpty)! ||
                (phoneTextField.text?.isEmpty)!
            
        {
            //Display Alert message and return
            displayMessage(userMessage: "All fields are required to fill in")
            return
        }
    
        }
    
    
    }
    
    func displayMessage(userMessage:String) -> Void {
        DispatchQueue.main.async
            {
                let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                    //Code will trigger when OK button tapped
                    print("Ok button tapped")
                    DispatchQueue.main.async
                        {
                            self.dismiss(animated: true, completion: nil)
                    }
                }
                alertController.addAction(OKAction)
                self.present(alertController, animated: true, completion: nil)
        }
    }

}
