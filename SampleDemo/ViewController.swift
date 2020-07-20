//
//  ViewController.swift
//  SampleDemo
//
//  Created by Atlas on 19/07/20.
//  Copyright © 2020 Atlas. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController{
    
    let tableView = UITableView()
    var technology = ["ios", "android", "java", "SAP"]
    final let url = URL(string: "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json")
    
    struct cells {
        static let tableCell = "tableCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "About Canada"
        setupTableView()
        downloadJson()
    }
        
    func setupTableView() {
        // setting us the delegates
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.separatorColor = UIColor.clear
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier:cells.tableCell)
        tableViewConstrains()
        
    }
    func setTableViewDelegates() {
        tableView.delegate      =   self
        tableView.dataSource    =   self
    }
    func tableViewConstrains() {
        // constraints
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    //Download from json
    
    func downloadJson() {
        let jsonUrlString = "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json"
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url){ data, urlResponse,error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print(data)
            do{
                let decoder = JSONDecoder()
                let details  = try decoder.decode(Detail.self, from: data)
                print (details.title )
            } catch {
                print ("in do ")
            }
        }.resume()
    }

    }



extension ViewController : UITableViewDelegate,  UITableViewDataSource {
    
    //Table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technology.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
      let cell = tableView.dequeueReusableCell(withIdentifier: cells.tableCell) as! CustomTableViewCell
      cell.titleLabel.text = technology[indexPath.row]
      return cell
    }
}



