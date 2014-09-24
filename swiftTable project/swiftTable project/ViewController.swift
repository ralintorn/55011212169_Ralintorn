//
//  ViewController.swift
//  swiftTable project
//
//  Created by student on 9/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellIdentifier = "cellIdentifier"
    var tableData = ["Bus","Helicopter","Truck"]
    
    @IBOutlet var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableview.registerClass(UITableViewCell.self,forCellReuseIdentifier: self.cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // UITableViewDataSource methods
    func numberOfSectionsInTableview(tableView: UITableView!)->Int { return 1
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int)->Int {
        return tableData.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        var cell = tableview!.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel!.text = self.tableData[indexPath.row]
            var imageName = UIImage(named: tableData[indexPath.row])
            cell.imageView!.image = imageName
        return cell
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        
        let alert = UIAlertController(title:"Item selected", message: "You selected item\(indexPath.row)",preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK",style: UIAlertActionStyle.Default,handler:{(alert: UIAlertAction!) in println("An alert of type \(alert.style.hashValue)was tapped!")
        }))
        self.presentViewController(alert,animated: true,completion: nil)
    }
}

