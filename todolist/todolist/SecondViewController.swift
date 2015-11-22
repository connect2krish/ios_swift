//
//  SecondViewController.swift
//  todolist
//
//  Created by Krish Venkat on 11/21/15.
//  Copyright © 2015 Krish Venkat. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(itemTextField.text!);
        itemTextField.text="";
        
        save()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        itemTextField.resignFirstResponder()
        
        return true
    }

    
    func save() {
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: TODOLIST)
    }
}

