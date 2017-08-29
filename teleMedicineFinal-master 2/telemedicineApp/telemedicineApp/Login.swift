//
//  ViewController.swift
//  telemedicineApp
//
//  Created by Aastha Shah on 7/24/17.
//  Copyright © 2017 Aastha Shah. All rights reserved.
//

import UIKit
import Parse
class Login: UIViewController {
    //MARK: Aastha Shah
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var login: CustomButton?
    
    
    @IBOutlet weak var animatedImage: customImageAnimation!
    
    @IBOutlet weak var signUp: CustomButton?
    
    override func viewDidLoad() {
        let hideKeyboardTap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboardTapped))
        hideKeyboardTap.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(hideKeyboardTap)
    }
    
    @IBAction func loginFunc(_ sender: Any) {
        if (usernameTextField.text?.isEmpty)! || (passwordTextField.text?.isEmpty)! {
            let missingFieldAlert = UIAlertController(title: "Missing Information", message: "Please fill all missing information", preferredStyle: UIAlertControllerStyle.alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            missingFieldAlert.addAction(ok)
            self.present(missingFieldAlert, animated: true, completion: nil)
        }
        
        PFUser.logInWithUsername(inBackground: usernameTextField.text!, password: passwordTextField.text!) { (user: PFUser?, error: Error?) in
            if error == nil {
               UserDefaults.standard.set(user!.username, forKey: "username")
               UserDefaults.standard.synchronize()
                let appDelegate: AppDelegate =  UIApplication.shared.delegate as! AppDelegate
                appDelegate.login()
                
            } else {
                let alert = UIAlertController(title: "Error", message: error!.localizedDescription, preferredStyle: UIAlertControllerStyle.alert)
                let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(ok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    func hideKeyboardTapped(recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    @IBAction func signUpFunc(_ sender: Any) {
    }
    

}

