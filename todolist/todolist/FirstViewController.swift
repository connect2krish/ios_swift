//
//  FirstViewController.swift
//  todolist
//
//  Created by Krish Venkat on 11/21/15.
//  Copyright © 2015 Krish Venkat. All rights reserved.
//

import UIKit

var toDoList = [String]()
var TODOLIST = "todolist";
class FirstViewController: UIViewController, UITableViewDelegate {    

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ((NSUserDefaults.standardUserDefaults().objectForKey(TODOLIST)) != nil) {
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey(TODOLIST) as! [String]            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoList.count;
    }    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell;
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            toDoList.removeAtIndex(indexPath.row);
            
            save()
            
            tableView.reloadData();
        }
        
    }

    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }

    func save() {
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: TODOLIST)
    }
}

