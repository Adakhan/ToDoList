//
//  DetailTableViewController.swift
//  TODOLIST
//
//  Created by Adakhanau on 27/04/2019.
//  Copyright © 2019 Adakhan. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemSubtitle: UILabel!
    
    var titleString = String()
    var subtitleString = String()
    /*
     let currentItem = todoItems[indexPath.row]
     
     cell.textLabel?.text = (currentItem["Name"] as! String)
     cell.detailTextLabel?.text = (currentItem["Description"] as! String)
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemTitle.text = titleString
        itemSubtitle.text = subtitleString
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    

}
