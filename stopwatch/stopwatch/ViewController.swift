//
//  ViewController.swift
//  stopwatch
//
//  Created by Krish Venkat on 7/24/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    
    var timer = NSTimer();
    var flag = true;
    
    var counter=0;
    @IBOutlet weak var startPauseLabel: UIToolbar!
    
    @IBAction func resetButton(sender: AnyObject) {
        timer.invalidate()
        counter=0;
        time.text="0";
    }
    
    @IBAction func startPauseButton(sender: AnyObject) {
        
        if(flag){
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true);
            flag = false;
        } else {
            timer.invalidate()
            flag = true;
        }
    }
    
    func result(){
        counter++;
        
        time.text = "\(counter)";
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

