//
//  FirstViewController.swift
//  To Do List
//
//  Created by nazlituncer.
//  Copyright © 2017 nazlituncer. All rights reserved.
//

// Code for the first tab of the Swift To Do List App
import UIKit

// initiate to do list (global)
var list = ["Buy milk", "Finish SE HW", "Shower", "Buy dishwasher soap"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var MyTableView: UITableView!
    
    // populate table/list of to do items
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // define how many rows you want in table view
        return (list.count) // as many rows as list items
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // populate table with list
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row] // iterate through all items in array
        
        return(cell)
        
    }
    
     public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
     {
        // delete item by swiping left (native specific)
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            MyTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        MyTableView.reloadData() //refresh every time item added
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

