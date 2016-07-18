//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Sanjay noronha on 7/18/16.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,  MyCellProtocol{
    
    var counter = 0

   
    @IBOutlet weak var myTableView: UITableView!
    
    func btnDidClicked() {
        
        counter += 6
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCellWithIdentifier("myCell") as! MyTableViewCell
        
        cell.myLabel.text = String(counter)
        
        cell.delegate = self
        
        return cell
        
    }


}

