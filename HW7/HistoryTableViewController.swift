//
//  HistoryTableViewController.swift
//  HW7
//
//  Created by Student on 5/30/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
import UIKit


class HistoryTableViewController: UITableViewController {
    
    var entries : [LocationLookup] = []
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let entry=entries[indexPath.row]
            
        cell.detailTextLabel?.text = String(entry.destLat)
        
        cell.textLabel?.text = String(entry.destLng)
        
        return cell
        
    }
    
}
