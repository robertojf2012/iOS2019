//
//  MotionShakeViewController.swift
//  iOS2019
//
//  Created by Robert JF on 2/25/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class MotionShakeViewController: UIViewController {
    
    @IBOutlet weak var txtResult: UILabel!
    @IBOutlet weak var txtLista: UITextView!
    @IBOutlet weak var txtAdd: UITextField!
    
    var people = ["Robert","Jorge","Ivan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getPeople()
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            if people.count != 0 {
                var persona = people.randomElement()!
                txtResult.text = persona
                people.remove(at: people.firstIndex(of: persona)!)
                txtLista.text = ""
                getPeople()
            }
            else{
                let alert = UIAlertController(title: "No hay", message: "No hay personas para elegir", preferredStyle: .alert)
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
    }
    @IBAction func btnAdd(_ sender: Any) {
        people.append(txtAdd.text!)
        txtLista.text = ""
        txtAdd.text = ""
        getPeople()
    }
    
    func getPeople(){
        for person in people {
            txtLista.text += "\(person) \n"
        }
    }
    
    
    
 
}
