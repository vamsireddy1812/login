//
//  RegisterViewController.swift
//  login
//
//  Created by Apple on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    

    
    @IBOutlet weak var repassword: UITextField!
    
    
    
    @IBAction func registerButton(_ sender: Any) {
        
        
        let userEmail = email.text;
        let userPassword = password.text;
        let userRepeatPassword = repassword.text;
        
        if(userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty)
        {
            //display alert message
            displayMyAlertMessage(userMessage: "please enter all the details");
            return;
            
        }
        
        if(userPassword != userRepeatPassword)
        {
            displayMyAlertMessage(userMessage: " passwords mismatch ");
            return;
        }
        //store data
        UserDefaults.standard.set(userEmail,forKey: "userEmail");
        UserDefaults.standard.set(userPassword,forKey: "userPassword");
        UserDefaults.standard.synchronize();
        //display
        let myAlert = UIAlertController(title: "Alert", message: "registation success", preferredStyle: UIAlertController.Style.alert);
        let okACTION = UIAlertAction(title: "ok", style: UIAlertAction.Style.default)
        {
            action in self.dismiss(animated: true, completion: nil);
            
        }
        myAlert.addAction(okACTION);
        
        self.present(myAlert, animated: true, completion: nil);
        
        
        
        
        
    }
    func displayMyAlertMessage(userMessage:String)
    {
        //display
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
        let okACTION = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil);
        myAlert.addAction(okACTION);
        
        self.present(myAlert,animated: true, completion: nil);
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
