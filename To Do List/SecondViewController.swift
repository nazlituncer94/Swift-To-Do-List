//
//  SecondViewController.swift
//  To Do List
//
//  Created by nazlituncer
//  Copyright © 2017 nazlituncer. All rights reserved.
//

// Code for the second tab of the Swift To Do List App
import UIKit

class SecondViewController: UIViewController {
    
    // text field for users to enter reminders
    @IBOutlet weak var input: UITextField!
    
    // adds new item to first tab list 
    @IBAction func addItem(_ sender: AnyObject) {
        
        if (input.text != "")
        {
            list.append(input.text!)
            input.text = "" // clear entry box for new entries
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

