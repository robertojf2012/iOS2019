//
//  LogInViewController.swift
//  iOS2019
//
//  Created by Robert JF on 3/7/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
