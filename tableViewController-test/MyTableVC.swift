//
//  MyTableVC.swift
//  tableViewController-test
//
//  Created by Vyacheslav Horbach on 10/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class MyTableVC: UITableViewController {

    var cars = ["BMW", "Mercedes", "Tesla", "Rolls Royce", "Aston Martin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)

        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"
        
        return cell
    }
}
