//
//  ViewController.swift
//  webview
//
//  Created by Krish Venkat on 11/21/15.
//  Copyright © 2015 Krish Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://krishlogic.net");
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            
            if(error == nil) {
                
                var urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)!
                
                self.webView.loadHTMLString(urlContent as String, baseURL: nil)
                
            }
            
        }
        
        task.resume();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

