//
//  ConvertidorGradosViewController.swift
//  iOS2019
//
//  Created by Robert JF on 2/14/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class ConvertidorGradosViewController: UIViewController {

    @IBOutlet weak var txtFarenheit: UITextField!
    @IBOutlet weak var txtResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Convertidor Grados"
        
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnConvertir(_ sender: Any) {
        
        if let farenheit = txtFarenheit.text{
            
            var grados = (Double(farenheit)!-32)*(5/9)
            
            txtResult.text = String("\(farenheit) farenheit son \(Int(grados)) grados")
            
            if(grados>=10){
                imgResult.image = UIImage(named:"sun.png")
            }else{
                imgResult.image = UIImage(named:"snowman.png")
            }
        }
        
        
       
        
    }
    
    

}
