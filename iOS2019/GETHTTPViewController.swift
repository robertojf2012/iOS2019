//
//  GETHTTPViewController.swift
//  iOS2019
//
//  Created by Robert JF on 5/9/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class GETHTTPViewController: UIViewController {
    
    @IBOutlet weak var txtUserId: UITextField!
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtCompleted: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "GET HTTP"
        
        AF.request("https://jsonplaceholder.typicode.com/todos/1").responseJSON { response in
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")
                let obj = JSON(data)
                self.txtUserId.text = "\(obj["userId"].int!)";
                self.txtId.text = "\(obj["id"].int!)";
                self.txtTitle.text = "\(obj["title"].string!)";
                self.txtCompleted.text = "\(obj["completed"].bool!)";
            }
        }
    }

}
