//
//  Practica1ViewController.swift
//  iOS2019
//
//  Created by Robert JF on 2/7/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class Practica1ViewController: UIViewController {

    @IBOutlet weak var txtNumero1: UITextField!
    @IBOutlet weak var txtNumero2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Practica 1"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumar(_ sender: Any) {
        let num1 = Int(txtNumero1.text!)
        let num2 = Int(txtNumero2.text!)
        let suma = Int(num1! + num2!)
        
        let alert = UIAlertController(title: "Suma", message: "La suma es \(suma)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
        
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
