//
//  DefaultViewController.swift
//  tipcalculator
//
//  Created by Krish Venkat on 9/20/16.
//  Copyright © 2016 Krish Venkat. All rights reserved.
//

import UIKit


class DefaultViewController: UIViewController {

    @IBOutlet weak var segmentedTipSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTipControl();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefault(sender: AnyObject) {
       
        let defaults = NSUserDefaults.standardUserDefaults();
        
        defaults.setObject(segmentedTipSelector.selectedSegmentIndex, forKey: "tipDefault");
        
    }
    
    func setTipControl() {
        let defaults = NSUserDefaults.standardUserDefaults();
        
        var defaultIndex = defaults.objectForKey("tipDefault");
        
        defaultIndex = defaultIndex!;
        
        if (defaultIndex == nil) {
            defaultIndex = 0;
            segmentedTipSelector.selectedSegmentIndex = 0;
        }
        
        defaults.setObject(defaultIndex, forKey: "tipDefault");
        segmentedTipSelector.selectedSegmentIndex = defaults.objectForKey("tipDefault") as! NSInteger;
        
        tipControlIndex = segmentedTipSelector.selectedSegmentIndex;
    }
}
