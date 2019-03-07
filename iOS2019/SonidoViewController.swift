//
//  SonidoViewController.swift
//  iOS2019
//
//  Created by Robert JF on 3/6/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit
import SwiftySound

class SonidoViewController: UIViewController {
    
    private var mySound: Sound?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Manejo de sonido"
    }
    
    @IBAction func btnSound(_ sender: Any) {
        Sound.enabled = true
        if let URL = Bundle.main.url(forResource: "cat", withExtension: "wav"){
            mySound = Sound(url: URL)
        }
        mySound?.play{ completed in
            print("ready")
            self.navigationController?.popViewController(animated: true)
        }
    }
    
   
}
