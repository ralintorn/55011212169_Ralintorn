//
//  ViewController.swift
//  Exam1_55011212169
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {
    var items = [String]()
  //  var items = [NSManagedObject]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addItem(sender: AnyObject) {
        var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default){ (action: UIAlertAction!)-> Void in
            let textField = alert.textFields![0] as UITextField
            let textField1 = alert.textFields![1] as UITextField
            let textField2 = alert.textFields![2] as UITextField
            self.items.append(textField.text)
            self.items.append(textField1.text)
            self.items.append(textField2.text)
            self.tableView.reloadData()
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default){ (action: UIAlertAction!)-> Void in
            
        }
        
        alert.addTextFieldWithConfigurationHandler {(textField: UITextField!)-> Void in}
        alert.addTextFieldWithConfigurationHandler {(textField1: UITextField!)-> Void in}
        alert.addTextFieldWithConfigurationHandler {(textField2: UITextField!)-> Void in}
        
    
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,animated: true,completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Data List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView,numberOfRowsInSection section: Int)->Int{
        return items.count
    }

    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")as UITableViewCell
        
        let item = items[indexPath.row]
        
       // cell.textLabel!.text = item.valueForKey("name") as String?
        cell.textLabel!.text = items[indexPath.row] as String?

        
        return cell
    }

//    func saveName(name: String){
//    let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
//    let managedContext = appDelegate.managedObjectContext!
//    
//    let entity =  NSEntityDescription.entityForName("Item",inManagedObjectContext: managedContext)
//        
//    let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
//        
//    item.setValue(name, forKey: "name")
//    item.setValue(name, forKey: "amount")
//    item.setValue(name, forKey: "price")
//        
//    var error: NSError?
//    if !managedContext.save(&error){
//        print("Could not save\(error),\(error?.userInfo)")
//        }
//        
//    items.append(item)
//    }

}

