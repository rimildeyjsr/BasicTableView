//
//  GroceriesTableViewController.swift
//  BasicTableView
//
//  Created by Rimil Dey on 27/10/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - properties
    
    var groceries = ["milk","eggs","chicken","cake","ice cream"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = groceries[indexPath.row]

        return cell
    }
    
}












