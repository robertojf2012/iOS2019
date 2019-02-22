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
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        self.title = "Convertidor Grados"
        
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func btnConvertir(_ sender: Any) {
        
        if let farenheit = Double(txtFarenheit.text!){
            txtResult.text = convertir(f: farenheit)
        }else{
            showAlert(title: "Error", message: "Ingrese numero valido")
        }
    }
    
    func convertir(f:Double) -> String {
        var grados = (Double(f)-32)*(5/9)
        if(grados>=10){
            imgResult.image = UIImage(named:"sun.png")
        }else{
            imgResult.image = UIImage(named:"snowman.png")
        }
        return String("\(f) farenheit son \(Int(grados)) grados")
    }
    
    func showAlert(title:String,message:String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    

}
