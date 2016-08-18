//
//  RideSettingsTableViewController.swift
//  Wheelie
//
//  Created by Cameron Moreau on 8/18/16.
//  Copyright © 2016 Mobi. All rights reserved.
//

import UIKit

class RideSettingsTableViewController: UITableViewController {

    @IBAction func cancelPressed(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func donePressed(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
