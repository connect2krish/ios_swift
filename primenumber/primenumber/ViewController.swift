//
//  ViewController.swift
//  primenumber
//
//  Created by Krish Venkat on 7/16/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numberText: UITextField!
    
    @IBAction func primeButton(sender: AnyObject) {
        
        var isPrime = false;
        
        var number = numberText.text.toInt();
        
        if(number <= 0){
            resultLabel.text = "enter valid number";
        } else if(number == 1 || number == 2){
            isPrime = true;
        } else {
            for(var i = 0;i < number; i++){
                if(number % 1 == 0){
                    isPrime=true;
                    break;
                }
                isPrime=false;
            }
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

