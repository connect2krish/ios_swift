//
//  ViewController.swift
//  permanentstorage
//
//  Created by Krish Venkat on 8/1/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arr = [1,2,3,4,5];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSUserDefaults.standardUserDefaults().setObject("krishlogic.net", forKey: "domain");
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array");
        
        var val = NSUserDefaults.standardUserDefaults().objectForKey("domain") as NSString;
        
        var valArr = NSUserDefaults.standardUserDefaults().objectForKey("array") as NSArray;
        
        println(val);
        
        println(valArr)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

