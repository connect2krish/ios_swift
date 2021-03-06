//
//  ViewController.swift
//  tipcalculator
//
//  Created by Krish Venkat on 9/12/16.
//  Copyright © 2016 Krish Venkat. All rights reserved.
//

import UIKit

var tipControlIndex:Int = 0;

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var numOfPeopleField: UITextField!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTipControl();
        billField.becomeFirstResponder();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(didAppear: Bool) {
        super.viewWillAppear(didAppear);
        setTipControl();
        calculateTip();
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        calculateTip();
    }
    
    @IBAction func calculateSplit(sender: AnyObject) {
        calculateTip();
    }
    
    @IBAction func calculateSplits(sender: AnyObject) {
        calculateTip();
    }
    
    func calculateTip() {
        let tipPercentages = [0.18, 0.20, 0.25];
        
        let bill = Double(billField.text!) ?? 0;

        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        
        let totalBill = bill + tip;
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", totalBill)
        
        //for split per person:
        
        var totalPeople = Double(numOfPeopleField.text!) ?? 1;
        
        if (totalPeople == 0) {
            totalPeople = 1;
        }
        
        let splits = totalBill / totalPeople;
        
        splitLabel.text = "Split per person: "+String(format: "$%.2f", splits);
        
    }
    
    func setTipControl() {
        let defaults = NSUserDefaults.standardUserDefaults();
        
        var defaultIndex = defaults.objectForKey("tipDefault");
        
        if (defaultIndex == nil) {
            defaultIndex = 0;
            tipControl.selectedSegmentIndex = 0;
        }
        
        defaults.setObject(defaultIndex, forKey: "tipDefault");
        tipControl.selectedSegmentIndex = defaults.objectForKey("tipDefault") as! NSInteger;
        
        tipControlIndex = tipControl.selectedSegmentIndex;
    }
}

