//
//  ViewController.swift
//  login
//
//  Created by Apple on 27/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        
        let isuserloggedin = UserDefaults.standard.bool(forKey: "isuserloggedin");
        if(!isuserloggedin)
        {
        self.performSegue(withIdentifier: "login", sender: self);
    }
    }
    
    
    @IBAction func logout(_ sender: Any) {
        
        UserDefaults.standard.set(false,forKey: "isuserloggedin ");
        UserDefaults.standard.synchronize();
        self.performSegue(withIdentifier: "login", sender: self);
    }
    
    
}

