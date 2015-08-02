//
//  ViewController.swift
//  slider
//
//  Created by Krish Venkat on 8/1/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func sliderAction(sender: AnyObject) {
        var value = sliderOutlet.value;
        result.text = "\(value)";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

