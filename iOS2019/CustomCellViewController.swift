//
//  CustomCellViewController.swift
//  iOS2019
//
//  Created by Robert JF on 4/10/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class CustomCellViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.addSubview(self.refreshControl)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LugarCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160.0
    }
    
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        
        refreshControl.addTarget(self, action: #selector(self.handleRefresh(_:)), for: UIControl.Event.valueChanged)
        
        refreshControl.tintColor = UIColor.red
        return refreshControl
    }()

    @objc func handleRefresh(_ refreshControl: UIRefreshControl){
        print("refresh")
        refreshControl.endRefreshing()
    }
    
    

}
