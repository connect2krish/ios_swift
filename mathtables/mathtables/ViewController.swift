//
//  ViewController.swift
//  mathtables
//
//  Created by Krish Venkat on 8/1/15.
//  Copyright (c) 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    let totalNumber = 20;
    
    @IBOutlet weak var resultTable: UITableView!
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderAction(sender: AnyObject) {
        resultTable.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return totalNumber;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
        
        var currentSliderValue = Int(sliderValue.value);
        
        
        var multipliedNumber = String(currentSliderValue * (indexPath.row+1));
        var indexRow = String(indexPath.row + 1);
        cell.textLabel?.text = String(currentSliderValue) + "  x  " + indexRow + " = " + multipliedNumber;
        
        return cell;
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

