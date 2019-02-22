//
//  IMCController.swift
//  iOS2019
//
//  Created by Robert JF on 2/21/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class IMCController: UIViewController {

    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtEstatura: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "IMC"
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @IBAction func btnCalcular(_ sender: Any) {
        
        if let peso = Double(txtPeso.text!) , let estatura = Double(txtEstatura.text!){
            lblResult.text = calcularMasaCorporal(peso: peso, estatura: estatura)
        }else{
            let alert = UIAlertController(title: "Error", message: "Campos no validos", preferredStyle: .alert)
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
    
    func calcularMasaCorporal(peso:Double, estatura:Double) -> String {
        var estatusDelPaciente:String = ""
        
        var imc = peso/(estatura*estatura)
        
        if(imc >= 19 && imc <= 24.9){
            estatusDelPaciente = "El paciente SI se encuentra en el peso adecuado"
        }else{
            estatusDelPaciente = "El paciente NO se encuentra en el peso adecuado"
        }
        return estatusDelPaciente
    }
    

    
    
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
   

}
