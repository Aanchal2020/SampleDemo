//
//  ViewController.swift
//  SampleDemo
//
//  Created by Atlas on 19/07/20.
//  Copyright © 2020 Atlas. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {
    
    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    var technology = ["ios", "android", "java", "SAP"]
   
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
        setupTableView()
    }
    
    func setupTableView() {
        // setting us the delegates
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        // constraints
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
    //Table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technology.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      cell.textLabel?.text = technology[indexPath.row]
      return cell
    }
}


