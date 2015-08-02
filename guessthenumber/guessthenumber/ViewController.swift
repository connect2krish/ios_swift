//
//  ViewController.swift
//  guessthenumber
//
//  Created by Krish Venkat on 7/24/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func guessButton(sender: AnyObject) {
        //generate random number:
        var randomNumber = arc4random_uniform(11)
        
        var enteredNumber = numberField.text.toInt();
        
        println(randomNumber);
        
        if(enteredNumber != nil) {
            if(enteredNumber == Int(randomNumber)) {
                result.text = "CORRECT";
            } else {
                result.text = "INCORRECT";
            }
        } else {
            result.text = "Invalid entry";
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

