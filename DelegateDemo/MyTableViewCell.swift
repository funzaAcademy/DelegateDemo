//
//  MyTableViewCell.swift
//  DelegateDemo
//
//  Created by Sanjay noronha on 7/18/16.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import UIKit

protocol MyCellProtocol {
    
    func btnDidClicked()
}


class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    var delegate:MyCellProtocol?

    @IBAction func btnClicked(sender: AnyObject) {
        
        if let delegate = delegate {
            
            delegate.btnDidClicked()    
        }
        
        
    }
}
