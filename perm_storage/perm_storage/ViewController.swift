//
//  ViewController.swift
//  perm_storage
//
//  Created by Krish Venkat on 11/21/15.
//  Copyright © 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        NSUserDefaults.standardUserDefaults().setObject("Krish", forKey: "name")
        
        print(NSUserDefaults.standardUserDefaults().objectForKey("name")!);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

