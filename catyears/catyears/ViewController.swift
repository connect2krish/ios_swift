//
//  ViewController.swift
//  catyears
//
//  Created by Krish Venkat on 7/10/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func ageFieldEditText(sender: AnyObject) {
        resultLabel.text=""
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func getAgeButton(sender: UIButton) {
        var age = ageField.text;
        
        if(age != nil && age != "") {
            age = age.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            var result = age.toInt()! * 7;
            
            resultLabel.text = "\(result) cat years"
            
        } else{
            resultLabel.text = "invalid age"
        }
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

