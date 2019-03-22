//
//  SimpleTableViewController.swift
//  iOS2019
//
//  Created by Robert JF on 3/20/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var names = ["robert","ivan","jorge","patito","bebe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Simple Table View"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("SELECTED \(names[indexPath.row])")
        performSegue(withIdentifier: "detailTableView", sender: nil)
    }
}
