//
//  loginViewController.swift
//  login
//
//  Created by Apple on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class loginViewController: UIViewController,UITextFieldDelegate {

    var alertControl:UIAlertController!
    
    @IBOutlet weak var registerEmail: UITextField!
    
    
    @IBOutlet weak var registerPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signin(_ sender: Any) {
        
        
        let userEmail = registerEmail.text;
        let userPassword = registerPassword.text;
        let userEmailStored = UserDefaults.standard.string(forKey:"userEmail")
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
       
        
        if(userEmailStored == userEmail)
        {
            if(userPasswordStored == userPassword)
            {
               // UserDefaults.standard.set(true,forKey: "isuserloggedin ");
               // UserDefaults.standard.synchronize();
               // self.dismiss(animated: true, completion: nil);
                let details = storyboard?.instantiateViewController(withIdentifier: "PersonalID")as! ViewController
                present(details,animated: true){
                    
                }
            }
        }
        else{
            self.alertControl = UIAlertController(title: "Alert", message: "Please Enter All The Details", preferredStyle: UIAlertController.Style.actionSheet)
            
            self.present(self.alertControl, animated: true, completion: nil)
            
            
            let act1 = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (act1) in
                print("Please Enter All The Details")
            }
            self.alertControl.addAction(act1)
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
